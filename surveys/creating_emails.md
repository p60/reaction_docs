# Creating Emails

There are four types of emails in reaction.

1. Heads up (let a participant know that you are going to be inviting them to participate)
2. Survey Link (send them the link to participate)
3. Reminder (if they have not participated, send them a reminder)
4. Last call (one last invitation)

# Dynamic Variables

Emails in Reaction are powered by the Liquid templating language, which allows you to personalize the message to the recipient, as well as customize certain aspects of the email. The following is a list of variables available for use.

## Survey Variables

``` liquid
(outputs ONLY the survey url (no link tag))
{{message.survey_url}}

(outputs a link button)
{{message.survey_url | button}}

{{message.survey_name}}
{{message.survey_subject_name}}
```

## Participant Variables

``` liquid
{{message.participant.first_name}}
{{message.participant.last_name}}
{{message.participant.company_name}}
{{message.participant.position_name}}
{{message.participant.email}}
{{message.participant.postal_code}}
{{message.participant.prefix}}
{{message.participant.locale}}
```

