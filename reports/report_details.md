---
  keywords: ['report', 'dashboard', 'page', 'pages', 'question', 'answer', 'answers', 'responses']
---


### Navigating A Report 

> Once you've finished creating your custom report, or clicked on an existing one, you'll be brought to your report landing page. You'll notice that a list of your report's questions, the **Table of Contents**, opens automatically for context the first time you open a report. In the background, you'll see a pre-configured dashboard based on the type of question. Let's dive in.

### Table of Contents

![Preview Page Nav Bar](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/reports_details/Reports+Table+of+Contents.png)

When you first open a report, a sidebar will open alongside it. This is a list of all of the pages of your report. You can open these pages by clicking on them, configure the report, or export the entire report to PDF from this side menu.

### Question Dashboards

> Our super smart data monkeys created a pre-configured dashboard for each question type.  Each of these dashboards consolidates and visualizes key groupings and metrics of your data for that question. (**Explore** and **Add New Visualization** will allow you to customize and explore the data further)
>  
>  <center>![data monkey](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/reports_details/data+monkey.jpg "data monkey")</center>

![Preview Page w/o Nav Bar](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/reports_details/reports+page+updated.png "This will be a screenshot of what a report page looks like WITHOUT the nav bar with the following annotations: Also add an overlay of the additional buttons you get after hitting the top left cog")

ADD CURRENT QUESTION DESCRIPTION NUMBER TO THIS LIST
1. Add a new visualization
2. Name of current report page
3. 	Name of Report
4. List of report pages and additional options 
5. Edit Dashboard Name or Destroy Dashboard
6. Current Dashboard Name
7. Explore or download the data as it is currently presented

### Explore

> **Explore** is an option available to you on each visualization.  It allows you to drill down from the current data point(s) you see in the visualization. *(Important: you cannot save the changes you make in explore from a pre-configured question dashboard, however this feature is possible by creating a **New Visualization**.)*

![Preview Page Nav Bar]("This will be a screenshot of a visualization, explore button, and possibly the explore state in a pop out. A gif might be better here")

#### Add New Visualization

>  We're all about slicing and dicing here. Our office dinner specialty is Ratatouille, our office game is Fruit Ninja, and our office hobby is smithing Japanese katana. We put a lot of thought into the pre-configured question dashboards, but one size does not fit all and you may need something answered that our data monkey's magic 8-ball missed. Luckily, creating new visualizations is a snap.


![Preview Page Nav Bar](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/reports_details/add+new+visualization.gif "This will be a GIF of the creation process of a new vis.")

1. Click the **Dashboard Configuration** ADD THE ACTUAL BUTTON button
2. Click "Add New Visualization"
3. Select your **Dimensions** and **Measures**. As you do so, each will be added to your **Data Results** in the bottom right as columns; *but these columns will not populate until you hit the **Run** button on the top right.* 
* A **dimension** is a data field linked to the survey or the participant. These are listed by group. Here are some examples:
	 * Group = **Questions**, Dimension = **Name**, Example: "What is your favorite color?"
	 * Group = **Answers**, Dimension = **Value(s)**, Example(s): "Red," "Blue," "Green"
	 * Group = **Positions and Job Titles**, Dimension = **Name**, Example(s): "Chief Executive," "Director of Operations," "Nurse Practitioner"
	  ![screenshot of dimension example](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/reports_details/visualization+dimensions+and+measure.png)

* A **measure** provides the metrics of the dimensions. Here are some examples:
		* Group = **Answers**, Measures = **Percent of Total**, Example(s): "Red" = 66%, "Blue" = 22%, "Green" = 12%
		* Group = **Positions and Job Titles**, Measures = **Count**, Example(s): "CEO" = 24, "Director of Operations" = 165, "Chief Operating Officer" = 102
4. Filter your Dimensions and Measures. These allow you to take a selected dimension or measure and zero in on the information that is most important. For example, if you only want to see the CEO's and COO's answers, you will do the following:
	* Click **Filter** to the right of **Positions and Job Titles** > **Name**
	* Select the parameter I want to use. In this case: **"is equal to"**
	* Type in the job titles you want to see. In this case: "CEO," "COO," and other iterations of them like "Chief Executive Officer" etc. (If your parameter is set to **"is equal to"** or **"is not equal to"**, suggestions will pop up as you type) 
5. Confirm you're getting the results you want in the **Data Results** by hitting **Run.**
6. Select the visualization you'd like (e.g. bar, column, pie, etc.).
	* You can also customize the visualization by clicking "edit" or the cog.
7. If everything looks good at this point, you can save the visualization by clicking the tahitan ocean blue **Save** button. (What you see is exactly what you get. If your filters section isn't collapsed, it won't be collapsed on your dashboard.)

### Congratulations! You just created a New Visualization!
	








