terraform {

  backend "s3" {
    bucket = "insfrastructure-april-chris"
    region = "us-west-2"
    key    = "infra.state"
  }
}
