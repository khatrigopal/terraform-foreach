variable "sns-topic-name" {
   description = "Creating the SNS Topics"
   type = map(object(
     {
	    sns-topic-name = string
     }
))	 
}
