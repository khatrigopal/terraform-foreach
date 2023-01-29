variable "policy" {
   description = "policy"
   type = map(object(
     {
	    policy = string
     }
))	 
}
