resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name      = "${var.Name}"
    Env       = "${var.Env}"
    Create_by = "${var.Created_by}"
    Dept      = "${var.Dept}"
  }
}
