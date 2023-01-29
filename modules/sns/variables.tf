variable "sns-topic" {
   description = "Creating the SNS Topics"
   type = map(object(
     {
	    sns_topic_name = string
     }
))	 
}
