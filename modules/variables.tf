varibale "s3-bucket" {
   description = "S3 Bucket"
   type = map(object(
     {
	    s3_bucket_name = string
     }
))	 
}
