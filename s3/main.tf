provider "aws" {
  region = "us-east-1"
}

### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "full-resources.tfstate"
    region = "us-east-1"
  }
}
######### S3##############
module "s3" {
  source     = "../modules/s3"
  s3-buckets = var.s3-buckets
  }
##########################
  
####### SNS ###################
module "sns" {
  source     = "../modules/sns"
  sns-topics = var.sns-topics
}
#############################
