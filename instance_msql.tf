resource "aws_instance" "mysql" {

  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  subnet_id                   = "${aws_subnet.private.id}"
  vpc_security_group_ids      = ["${aws_security_group.private.id}"]
  associate_public_ip_address = "true"
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name       = "${var.Name}"
    Env        = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept       = "${var.Dept}"

  }
}
