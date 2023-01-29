variable  "sns-topics" {
   description = "SNS Details"
   type = map(object(
     {
	    sns-topic-name = string
     }
))	 
}
