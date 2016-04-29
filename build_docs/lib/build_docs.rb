require "build_docs/version"
require "active_support/all"

module BuildDocs
  REPO_URL = "https://raw.githubusercontent.com/p60/reaction_docs/master".freeze
  MAPPING_FILE_NAME = "topics.json"
  IGNORED_FILENAMES = [ "Readme" ].freeze

  class HelpTopic < Struct.new(:key, :url, :title); end

  def self.root
    ::File.expand_path('../.')
  end

  def self.root_path
    ::Pathname.new(root)
  end

  def self.markdown_files
    @markdown_files ||= ::BuildDocs::FS::Directory.new(root).files(true).by_extension(".md").reject{|f|
      IGNORED_FILENAMES.include?(f.basename(".*").to_s)
    }
  end

  def self.markdown_file_mapping
    markdown_files.inject({}) do |result, listing|
      url = "#{REPO_URL}#{listing.to_s.split(root).pop}"
      title = listing.basename(".*").to_s.titleize
      key = listing.to_s.split(root).last.gsub('.md', '').tap{|s| s.slice!(0)}
      result[key] = HelpTopic.new(key, url, title)
      result
    end
  end

  def self.compile_mapping
    ::File.open(root_path.join(MAPPING_FILE_NAME), 'w+') do |f|
      f << markdown_file_mapping.to_json
    end
  end

  #copied from trax core
  module FS
    module Scopes
      def by_extension(*extensions)
        matches = select{ |file|
          extensions.include?(file.extension)
        }
      end
    end

    class Files < SimpleDelegator
      include ::Enumerable
      include ::BuildDocs::FS::Scopes

      attr_accessor :files

      def initialize(*args)
        @files = (args || []).flatten.compact.uniq
      end

      def __getobj__
        @files
      end

      def each(&block)
        @files.each do |file|
          block.call(file)
        end
      end
    end

    class Directory < SimpleDelegator
      attr_accessor :files, :directories, :path

      def self.[](path)
        file_path = path.is_a?(Pathname) ? path : ::Pathname.new(path)
        new(file_path)
      end

      def [](arg)
        self.class.new(@path.join(arg).to_s)
      end

      def initialize(file_path)
        @path = ::Pathname.new(file_path)
        @dir = ::Dir[@path]
      end

      def all
        @all ||= ::Dir[path.join("*")].map do |folder_or_file|
          listing = ::Pathname.new(folder_or_file)
          listing.directory? ? self.class.new(listing) : ::BuildDocs::FS::Listing.new(listing)
        end
      end

      def directories(*args)
        folders(*args)
      end

      def each
        yield(entries)
      end

      def entries
        @entries ||= ::Dir.entries(path).map do |file_path|
          directory_file_path = ::Pathname.new(file_path) unless file_path.is_a?(Pathname)
          directory_file_path.directory? ? ::BuildDocs::FS::Directory.new(directory_file_path) : ::Listing.new(directory_file_path)
        end
      end

      def files(recurse = false)
        @files ||= begin
          if recurse
            current_directory_files = Files.new(all.select{|file_path| file_path.is_a?(::BuildDocs::FS::Listing) })

            directories.map do |dir|
              next unless dir.files(true) && dir.files(true).any?
              current_directory_files.files += dir.files(true)
            end if directories.any?

            current_directory_files || ::BuildDocs::FS::Files.new
          else
            Files.new(all.select{|file_path| file_path.is_a?(::BuildDocs::FS::Listing) })
          end
        end
      end

      def folders(recurse = false)
        @folders ||= begin
          if recurse
            current_directory_directories = all.select{|file_path| file_path.is_a?(::BuildDocs::FS::Directory) }

            current_directory_directories += folders(true).map do |dir|
              dir.directories(true).any? ? dir.directories(true) : []
            end if directories(true) && directories(true).any?

            current_directory_directories
          else
            all.select{ |file_path| file_path.is_a?(::BuildDocs::FS::Directory) }
          end
        end
      end

      def glob(*args)
        args.map do |arg|
          self.dup[arg].flatten.compact.uniq.map{|_path| ::BuildDocs::FS::Listing.new(_path) }
        end.flatten.compact.uniq
      end

      def __getobj__
        @dir
      end

      def recursive_files
        files(true)
      end

      def recursive_folders
        folders(true)
      end

      def reload
        remove_instance_variable(:@folders) if defined?(:@folders)
        remove_instance_variable(:@files) if defined?(:@files)
        self
      end

      def images
        files.select{|file| file.image? }
      end
    end

    class CurrentFileDirectory < SimpleDelegator
      include ::Enumerable

      def self.[](path)
        file_path = path.is_a?(::Pathname) ? path : ::Pathname.new(path)
        new(file_path)
      end

      attr_accessor :directory, :path

      def initialize
        source_file_path = caller[3].partition(":")[0]
        @path = ::Pathname.new(::File.dirname(source_file_path))
        @directory = ::BuildDocs::FS::Directory.new(@path)
      end

      def __getobj__
        @directory
      end

      def each
        yield @directory
      end
    end

    class CurrentDirectory < CurrentFileDirectory

    end

    class CurrentWorkingDirectory < SimpleDelegator
      include ::Enumerable

      attr_accessor :directory, :path

      def initialize
        @path = ::Pathname.new(::Dir.pwd)
        @directory = ::BuildDocs::FS::Directory.new(@path)
      end

      def __getobj__
        @directory
      end

      def each
        yield @directory
      end
    end

    class Listing < Pathname
      def bitmap?
        return sample[0,2] == "MB"
      end

      def copy_to(destination)
        ::FileUtils.cp(self, destination)
      end

      alias_method :extension, :extname
      alias_method :ext, :extname

      def gif?
        return sample[0,4] == "GIF8"
      end

      def name
        basename.to_s
      end

      def name_without_extension
        name.split('.')[0]
      end

      def image?
        bitmap? || gif? || jpeg?
      end

      def jpeg?
        return sample[0,4] == "\xff\xd8\xff\xe0"
      end

      def sample
        @sample ||= begin
          f = ::File.open(self.to_s, 'rb')
          result = f.read(9)
          f.close
          result
        end
      end
    end
  end
end
