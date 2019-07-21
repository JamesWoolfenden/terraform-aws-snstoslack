## subscribes to a topics

```cli
aws-vault exec test -- aws sns subscribe --topic-arn arn:aws:sns:eu-west-2:10000000:slack-topic --protocol lambda --notification-endpoint arn:aws:lambda:eu-west-2:10000000:function:SlackNotification --region eu-west-2
```

# this will trigger an alarm

Do not abuse this power pls.

```cli
 aws-vault exec test --  aws cloudwatch set-alarm-state --alarm-name "JenkinsCPUMaxout" --state-value ALARM --state-reason "I LIKE SHOUTING"
```
