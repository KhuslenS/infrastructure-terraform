resource "aws_instance" "web1" {

  ami                         = ""
  instance_type               = ""
  key_name                    = ""
  subnet_id                   = ""
  vpc_security_group_ids      = ""
  associate_public_ip_address = "true"
  user_data                   = ""
  count                       = ""



  tags = {
    Name      = "${var.Name}.public"
    Env       = "${var.Env}"
    Create_by = "${var.Created_by}"
    Dept      = "${var.Dept}"

  }
}
