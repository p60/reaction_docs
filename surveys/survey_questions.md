---
  keywords: ['survey', 'surveys', 'creating', 'question', 'questions', 'boolean', 'multiple choice', 'multiple choice many', 'ranking', 'text', 'nps', 'number scale', 'color', 'condition', 'conditions', 'translation', 'translations', 'choices']
---

### Questions Tab

>I picture a survey without good *Questions* as a dinner party without dinner. You show up hungry expecting food and instead get a spiel about your friend's new scented oil business that you should *totally* be a part of. Don't be that person. Feed your "friends" (with interesting and worthwhile questions) and make them happy they came. They might just show up for the next one — and the one after that. 

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey_questions/Main+Questions+Page.png "This will be a screenshot of the Questions section with annotation of each section. Timer, Add Question, Hamburger Bar, Questions, Reorder Questions, Update Questions order - Main Questions Page WE NEED TO ADD A CONDITION ICON WITH DESCRIPTION")

### Question Types

1. **Boolean (For Yes/No or True/False questions)** - "Yes" or "No", "True" or "False," "Always" or "Never;" it's all black and white in the land of Boolean.
2. **Multiple Choice (For Select One questions)** - Other times there might only be one possible answer for you to make, or maybe we're sadists and are forcing you to pick just one reason you're a Belieber.  FIX THE CONTINUITY OF THE JOKE BECAUSE TREVOR MADE ME CHANGE THIS
3. **Multiple Choice Many (For "Select All That Apply" or "Select Multiple" questions)** - Sometimes we don't want to know just one reason you love Justin Beiber; we know you have many.
4. **Number Scale** - On a scale of 0-10 (0 being awful and 10 being fantastic) how helpful has this help doc been?
5. **Ranking** - 5, 4, 7, 6, 3, 2, 1. I just ranked the Star Wars films as of 2016. Easy. 
6. **Text (Open Ended Question)** - Sometimes the answer to a question shouldn't be pre-defined, nor should we try to read a participant's mind. The answer to the ultimate question of life, the universe, and everything is occasionally more complicated than "42."

### Adding a Question to Your Survey

1. On the questions page, click **"Add Question"** in the center of the page or in ![Orange Hamburger Menu](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/Icons/Orange+Hamburger.png).
2. Select the **question type** you'd like from the list.
![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey_questions/new+multiple+choice+many+question-01.png)

3. Type in your **question** as you'd like it to be seen by participants.
4. If needed, add any **question instructions** for clarification.
![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey_questions/mc+question+5+and+6-01.png)

5. If you'd like a different **reporting name** for this question, unlock the default by clicking the ![padlock](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/Icons/Padlock.png) and add your new reporting name.  
6. Add any **question tags**. Tags allow for marking a question with additional identifiers. These identifiers will "tag" the question so you can find the question (i.e. in a report) by either the question tag(s) *OR* the question itself. An example might be if I periodically ask "who is your preferred pizza delivery person" in various surveys. This would allow me to go back and track trends over time to see if Jimmy increases in popularity. This might prompt all new questions to help me determine the reasoning behind Jimmy's newfound popularity. 
<a id="choices"></a>
![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey_questions/mc+question+7+and+8-01.png)
7. Add your **choice values** (i.e. the displayed choices that a participant will choose from) by filling in the value field and adding any new values by clicking "add new value."
8. Click the **Save Question** button.

### Some question types have additional options for customization:

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey_questions/3+Question+Options.png  "Survey Question Options")
ADD ANNOTATIONS TO THE LARGER SCREENSHOT
1. **Customize reported values** - is a handy way to truncate or customize a choice value for reports. (e.g. Original Value: "I am a big fan of the Healthcare Common Procedure Coding System" > Report Value: "Fan of HCPCS").
2. **Include "Other" Answer** - adds a freeform text box to provide an answer/choice that isn't already listed.
3. **Limit Selectable Answers** - keeps a participant from clicking every box in a "Multiple Choice Many" style question.


<a id="conditions"></a>
### Manage Conditions
>  If Question 1 is: "Do you like pizza?" and they respond with: "No" then we don't want Question 2 to be "What are your favorite toppings?" We would want it to be something more along the lines of: "Do you also dislike puppies and baby otters?" Sometimes, depending on responses, we don't want to ask every participant every question. This is the essence of conditions, to create a flowchart of questions based on responses. 

To create a new condition: 

1. On the question list page, put all of your questions in the order you'd like them to appear to the participant before adding any conditions. Do this by clicking the up and down arrows to the right of each question. **The order cannot be changed if there are conditions!**
2. To add a condition (i.e. create a conditional question), click on the question that you want displayed *only* if certain conditions are met. 
3. Click on the ![Orange Hamburger Menu](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/Icons/Orange+Hamburger.png), select "manage conditions," and click "add condition."
   1. Select the base question (ex. I only want to ask "What are your favorite toppings?" to those who responded "yes" to the question "Do you like pizza?" — "Do you like pizza?" is the base question).
   2. Using the "Operators" dropdown, select the operator that satisfies the condition that needs to be met. (Some operators are only available for certain question types). Here are all available operators and an example of each in use:
   
   | If "Base Question"   |      Operator      |  Condition | Then "Conditional Question" |
|:-------------|:-------------|:-------------|:-------------:|
| "Do you like pizza?" |  **equals** | "yes" | "What is your favorite pizza topping?" |
| "What is your favorite pizza topping?" |    **does not equal**  |   "anchovies" | "What do you have against anchovies?"
| "What is your favorite pizza topping?" | **equals one of** |   "pepperoni", "sausage", "ham/Canadian bacon"  |  "Why do you like meat so much?" |
|"What is your favorite pizza topping?" | **does not equal any** |  "pepperoni", "sausage", "ham/Canadian bacon"  |  "Are you a vegetarian?" |
|"Which of the following times for the 2017 National Pizza Convention would be the most convenient for you to attend?" | **answered** |  NA |  "Can we count on your presence?" |
|"Which of the following times for the 2017 National Pizza Convention would be the most convenient for you to attend?" | **not answered** | NA |  "Please suggest an alternate time: " |
|"Which of the following pizza places have you been? (select all that apply)" | **contains** |  "Pizza Hut"  |  "How likely are you to recommend Pizza hut to your mom?" |
|"Which of the following pizza places have you been? (select all that apply)" | **does not contain** |  "Pizza Hut"  |  "Are you willing to try Pizza Hut?" |

   
   3. At this point you will either click "Save" or you may add additional conditions and even conditions within conditions. It's like *Inception*, but for conditions. (*Inception 2: "They Thought Limbo Was The Deepest You Could Go"*)

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/survey_questions/Condition+Modal.png "This will be a screenshot of the add condition modal")

![This was supposed to be a screenshot. If you're seeing this it means the world is ending and you should probably panic!](http://www.findinglaurie.com/wp-content/uploads/2016/05/Placeholder-400x200.png  "This will be a corresponding flowchart giving an example of conditions")


### Survey Preview
> Would Steve Jobs have shipped the Macintosh sight unseen? Like Michelangelo, you've crafted your David of a survey and now you need to preview it. Previewing your survey lets you have the same experience your recipients will. 

To preview your survey:

1. On the question list page, click the ![Orange Hamburger Menu](https://s3.amazonaws.com/peer60_organizations/documentation+tbd/Icons/Orange+Hamburger.png) and select preview.
2. Verify that each question and condition are working and look as expected. At the end, you have the option to Restart Preview and go through it again (useful if you have different conditions) or you may just close the window. 

## Congratulations, you've just created a survey!
