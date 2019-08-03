resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.dev.id}"


  tags = {
    Name      = "${var.Name}"
    Env       = "${var.Env}"
    Create_by = "${var.Created_by}"
    Dept      = "${var.Dept}"
  }
}
