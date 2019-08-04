module "mysql" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = " 3.0"

  name = "mysql-asg"

  # Launch configuration
  lc_name = "mysql-lc"

  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.private.id}"]




  # Auto scaling group
  asg_name                  = "mysql-asg"
  vpc_zone_identifier       = ["${aws_subnet.private.id}"]
  health_check_type         = "EC2"
  min_size                  = 3
  max_size                  = 6
  desired_capacity          = 3
  wait_for_capacity_timeout = 0


  tags_as_map = {
    Name      = "${var.Name}-Mysql"
    Env       = "${var.Env}"
    Create_by = "${var.Created_by}"
    Dept      = "${var.Dept}"
  }
}
