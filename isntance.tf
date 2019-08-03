resource "aws_instance" "web1" {

  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  subnet_id                   = "${aws_subnet.public.id}"
  vpc_security_group_ids      = "[${aws_security_group.public.id}]"
  associate_public_ip_address = "true"
  user_data                   = "${var.userdata}"
  count                       = "${var.count}"



  tags = {
    Name      = "${var.Name}${count.index + 1}"
    Env       = "${var.Env}"
    Create_by = "${var.Created_by}"
    Dept      = "${var.Dept}"

  }
}