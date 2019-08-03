resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name      = "${var.Name}"
    Env       = "${var.Env}"
    Create_by = "${var.Created_by}"
    Dept      = "${var.Dept}"
  }
}
