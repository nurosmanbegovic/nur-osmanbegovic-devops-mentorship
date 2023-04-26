aws route53 change-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK --change-batch '{"Changes":[{"Action":"CREATE","ResourceRecordSet":{"Name":"nur-osmanbegovic.awsbosnia.com.","Type":"A","TTL":60,"ResourceRecords":[{"Value":"35.157.198.175"}]}}]}'











aws route53 list-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK | jq '.ResourceRecordSets[] | select(.Name == "nur-osmanbegovic.awsbosnia.com.") | {Name,Value}'






aws route53 change-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK --change-batch '{"Changes":[{"Action":"CREATE","ResourceRecordSet":{"Name":"nur-osmanbegovic.awsbosnia.com.","Type":"CNAME","TTL":60,"ResourceRecords":[{"Value":"nur-osmanbegovic-task8-860349625.eu-central-1.elb.amazonaws.com"}]}}]}' --profile aws-bosnia
 CREATE record [da kreiras record koristeci samo domenu + DNS load balancera]
aws route53 change-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK --change-batch '{"Changes":[{"Action":"CREATE","ResourceRecordSet":{"Name":"nur-osmanbegovic.awsbosnia.com.","Type":"CNAME","TTL":60,"ResourceRecords":[{"Value":"nur-osmanbegovic-task8-860349625.eu-central-1.elb.amazonaws.com"}]}}]}'




aws route53 change-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK --change-batch '{"Changes":[{"Action":"DELETE","ResourceRecordSet":{"Name":"nur-osmanbegovic.awsbosnia.com.","Type":"A","TTL":60,"ResourceRecords":[{"Value":"35.157.198.175"}]}}]}'



aws route53 change-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK --change-batch '{"Changes":[{"Action":"CREATE","ResourceRecordSet":{"Name":"_e13925753ac10653cb4fe57bfe42e872.nur-osmanbegovic.awsbosnia.com.","Type":"CNAME","TTL":60,"ResourceRecords":[{"Value":"_f7cc1d79948222c06bb7a5547505d53c.tctzzymbbs.acm-validations.aws."}]}}]}'