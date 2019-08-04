terraform {

  backend "s3" {
    bucket = "infrastucture-april-chris"
    region = "us-east-1"
    key    = "infra.state"
  }
}
