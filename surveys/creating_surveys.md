---
keywords: ['survey', 'surveys', 'groups', 'triggers', 'scheduling']
---


---
keywords: ['survey', 'surveys', 'groups', 'triggers', 'scheduling']
---


# Surveys

> Note: Before creating your survey, to make your life easier, we recommend adding/creating any new <a href="participants">participants</a> and <a href="groups">groups</a> that will be involved. You are unable to save a survey without completing the participant invitation field.

DEVS - HOW CAN WE BEST ADD "BEST PRACTICES" TO THE DOCUMENTATION? FORMATTING APPEARS LIMITED IN MARKDOWN BUT WE DON'T NECESSARILY WANT IT SEPARATED.
___
**Surveys**, the means you use to do your research with Reaction, are located on the left. This is where you'll go to see all your ongoing and completed surveys, as well as create news ones. 
<center>
![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/menu+bar+.png "This will be a screenshot of the menu bar with Surveys circled")
</center>

If you're a first timer in Reaction, or you want just want to get down to business, you'll want to get straight to the creation process(add link to "configuring the survey") and click the ![](Insert + button here) in the top right corner. This will give you the option to create one of two types of surveys:

  * **NPS** is a classic Net Promoter Score Survey, with pre-generated questions to assure consistency (though additional questions are still an option).
  * **Freeform** is for anything and everything else. 
 
If you have any existing surveys, whether they're still being worked on ("Draft"), ongoing ("Open"), or completed ("Closed"), they'll be the colorful tiles like you see here:

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey+tile.png "This will be a screenshot of a Survey tile with annotations describing each aspect of it")

### Creating your Survey: 
#### Details Tab

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/Survey+Details+-+Part+1.png "This will be a screenshot of the Details section with annotation of each section. Survey Details Tab - Part 1")

1. **Configure Survey** - This is the important stuff.
   1. Every Survey needs a name! This is not visible to the participants so feel free to get creative. For organizational purposes, you may want to include **“| month year”** after the name. Ex: **"Revenue Cycle | May 2015"** 
   2.  Describe your survey. What are your goals? What do you hope to achieve by asking the questions you'll soon be creating? What is the meaning of the universe? Keep in mind, you, or someone else entirely, could be coming back to this in a year or more.
   3.  NEED MORE INFO ON TAGS
2. **Participant Invitation** - How do you want your survey to be distributed? (We're working on the "by owl" option.)
   1. "Is Trigger Based?" or — "if this happens, then do that" — will allow you to send a survey automatically when a case is closed in Salesforce.  NEED TO DOUBLE CHECK THIS. ADD LINK TO TRIGGERS DOC.
   2.  The "Participant Group" dropdown will be where you select the pre-configured audience you want to reach. (You did read the note at the beginning that told you to create a group before you got to this point, right? If not, click here **ADD LINK** to learn how to create groups.) **Remember**, you can't change your *Participant Group* once you've saved your survey.
3. **Design Settings** - We don't want to distract from the research; but here's your chance to make things a teensy bit flashy.
   1. If you're using Reaction, chances are you know someone who has created a logo, even if you haven't yourself. Show it off! (If you haven't added your logo yet, click here **ADD LINK**)
   2. The "Admin Color" can be used to organize surveys in a visual way or, it could be a rare opportunity to choose your favorite color while you're getting paid for it. 

#### Details Tab

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](http://ima.gs/Placeholder-400x200.png "This will be a screenshot of the Details section with annotation of each section. Survey Details Tab - Part 2 not yet complete")

4. **Completion Page Custom Content** - 
5. **Freeform Options** - 



#### Questions Tab

>I picture a survey without good *Questions* as a dinner party without dinner. People show up hungry expecting food and instead they get a shpeel about their friend's new scented oil business that you should *totally* be a part of. Feed your friends and make them happy they came. They might just show up for the next one; and the one after that. 

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/Main+Questions+Page.png "This will be a screenshot of the Questions section with annotation of each section. Timer, Add Question, Hamburger Bar, Questions, Reorder Questions, Update Questions order - Main Questions Page")

##### Question Types

1. **Boolean (For Yes/No or True/False)** - "Yes" or "No", "True" or "False," "Always" or "Never;" life *is* in black and white in the land of Boolean.
2. **Multiple Choice Many (For "Select All That Apply" or "Select Multiple")** - Sometimes we don't want to know just one reason you love Justin Beiber. We know you have many.
3. **Multiple Choice (For Select One)** - Other times there might only be one possible answer for you to make, or maybe I'm a sadist and am forcing you to pick just one reason you're a Belieber. Don't you dare abuse the "Other" option with a list.
4. **Number Scale** - On a scale of 0-10 (0 being awful and 10 being fantastic) how helpful has this help doc been?
5. **Ranking** - 5, 4, 7, 6, 3, 2, 1. I just ranked the Star Wars films as of 2016. Easy. 
6. **Text (Open Ended Question)** - Sometimes the answer to a question shouldn't be pre-defined; nor should we always try to read a participant's mind. The answer to the ultimate question of life, the universe, and everything is occasionally more complicated than "42."

Some questions have additional options for customization...



![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](http://ima.gs/Placeholder-400x200.png "This will be a screenshot of the Details section with annotation of each section. Survey Question Options)


##### Manage Conditions
>If Question 1 is: "Do you like pizza?" and they respond with: "No" then we don't want Question 2 to be "What are your favorite toppings?" We would want it to be something more along the lines of: "How do you live with yourself?" This is the essence of conditions. We create a flowchart of questions based on responses.

To create a new condition: 

1. Put all of your questions in the order you'd like them to appear to the participant before adding any conditions. Do this by clicking the up and down arrows to the far right of each question. **The order cannot be changed once you add conditions!**
2. To add a condition, click on the question that you want displayed *only* if certain conditions are met. 
3. Click on the orange hamburger button and select "manage conditions."
   1. Select the question that forms the condition (ex. I only want to ask "What are your favorite toppings?" to those who responded "yes" to the question "Do you like pizza?" "Do you like pizza?" is the question that forms the condition.)
   2. Using the "Operators" dropdown, select the correct operator to create the condition that needs to be met. (ex. "Do you Like Pizza?" equals "Yes") 
   3. At this point you will either click "Save" or you may add additional conditions and even conditions within conditions. It's like *Inception*, but for conditions. (*Inception 2: "They Thought Limbo Was The Deepest You Could Go"*)

**DO WE NEED TO DEFINE AND PROVIDE EXAMPLES OF EACH OPERATOR?**

##### Survey Preview
>Would Steve Jobs have shipped the Macintosh sight unseen? Like Michelangelo, you've crafted your David of a survey; and now you need to preview it. Previewing your survey lets you have the same experience your recipients will; check and double-check that everything is as it should be. 

To preview your survey:

1. On the questions tab, click the orange hamburger button and select preview.
2. Verify that each screen and condition are working and look as expected by clicking through it. At the end you have the option to Restart Preview and go through it again or you may just close the window. 

#### Participations Tab
>These Surveys don't take themselves! 

To add participations to your survey:

1. Click "Create Participations For 'group_name'"
2. That's it. Super anti-climactic, right? Maybe help yourself to a snack.

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/add+participant.gif "This will be a gif of how to add participations")

MOVE THE "SCHEDULE SURVEYS" SECTION SOMEWHERE WITHIN THE EMAILS TAB?

#### Emails Tab
>Getting folks to participate in a survey, while trying to avoid using the word "survey" and adding to their already overflowing email inbox, is an art form. Grab your Bob Ross wig and start making some art.

To create 1 of your 3 email sends:

1. Click the orange + icon on the bottom right and select which email you'd like to create.
	1. The **"Survey Link"** type will be your most common email send. 
	2. If you're unsatisfied with the results after one send or just want to remind people you'll use the **"Survey Reminder."**
	3. If you're still unsatisfied after 2 sends, you can send the **"Last Call"** to give your audience one last chance to participate.
2. Select who you'd like it sent from by clicking the **"Email Configuration"** dropdown. These are created in  [Settings](../blob/master/NEEDTOSETUPCORRECTLINK) and are preconfigured combinations of the email address we want to send from, replies sent to, and an email signature; typically, the same one the sender always uses.
3. Add your Email **Subject**.
4. Add your Email **Body** while utilizing the **Insert Variable** tool. This allows you to add participant attributes (e.g. Dear "Participant First Name) and various ways to link the survey (e.g. Survey Link Button).
5. **Preview** your email by clicking the eyeball and sending it to your own email address. This is exactly as it will appear to recipients and is meant for you to note necessary changes and eventually give it the sign of approval. 
   *  Should you decide that one of your email drafts doesn't need to be sent or if you just want to start from scratch you can click the **"Delete"** button trash can on the bottom.
6. Once you've confirmed it is the way you want it, click **"Delivery Actions"** and select "Create Deliveries for Participants."
7. When you have a send schedule in mind click **"Delivery Actions"** again and select "Schedule Created Deliveries."
	1. To send it immediately (you procrastinator, you), you will toggle the "Schedule Delivery Time" off, read the dialogue letting you know that this is the point of no return as we can't unsend emails, click the "Ready" box, and "Deliver Email Messages."
	2. To schedule a future send, toggle the "Schedule Deliver Time" on, select the date and time you'd like this email to be sent out, read the dialogue letting you know that this is the point of no return as we can't un-send emails, click the "Ready" box, and "Deliver Email Messages."




![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/build+email.gif "This will be a gif of the above emailing process")

#### Deliveries Tab
>Have you ever asked yourself "are people even getting these things I send? I haven't been getting any 'Thank You' cards so how can I be sure?" Enter the Deliveries Tab.

To check the status on a particular person, just click on the magnifying glass and choose which field you'd like to search by. Otherwise, you're able to scroll though and verify the status of your deliveries.  NEED MORE DETAILS ON THE PURPOSE OF THIS SECTION

### Scheduling Surveys

>"If it's not on the schedule then it never happened."
>
>-Crooked Politician or Reaction User

We don't want to see a survey go out before it's ready. Once you've given or gotten the stamp of approval, make your way back to the details tab of the Surveys section. 

You can specify a survey start and survey end date. This will change the survey status from scheduled to open, and open to closed, when that date / time comes. When a survey is closed, participations will no longer be recorded, and will not show up in any of your reports.

In the below screenshot, the survey's status will change to open on May 3rd at 4:00 AM, and close on May 12th, at 12:00 AM.

![Scheduling Survey](http://ima.gs/Placeholder-400x200.png "Setting a scheduled survey start / end date")

![](http://giant.gfycat.com/WatchfulAlarmedHorseshoecrab.gif)


