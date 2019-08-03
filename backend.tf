terraform {

  backend "s3" {
    bucket = "infrastucture-april-chris"
    region = "us-west-2"
    key    = "infra.state"
  }
}
