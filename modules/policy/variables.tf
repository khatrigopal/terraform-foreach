variable "policy" {
   description = "policy"
   type = map(object(
     {
	    s3_bucket_name = string
     }
))	 
}
