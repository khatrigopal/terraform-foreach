variable "sns-topic" {
   description = "Creating the SNS Topics"
   type = map(object(
     {
	    sns-topic-name = string
     }
))	 
}
