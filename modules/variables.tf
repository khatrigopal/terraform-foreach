variable "s3-buckets" {
   description = "S3 Bucket"
   type = map(object(
     {
	    s3_bucket_name = string
     }
))	 
}
