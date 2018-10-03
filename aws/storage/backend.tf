terraform {
  required_version = "= 0.10.7"

  backend "s3" {
    bucket = "sro75-demo-state"
    key    = "terraform/sro75-demo/state"
    region = "eu-west-2"

    #    dynamodb_table = "tf_sro75_demo_lock"
  }
}
