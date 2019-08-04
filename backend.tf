terraform {

  backend "s3" {
    bucket = "infrastucture-chris"
    region = "us-east-1"
    key    = "infra.state"
  }
}
