output "VPC" {
  value = "${aws_vpc.dev.id}"
}
output "public-subnet" {
  value = "${aws_subnet.public.id}"
}

output "private-subnet" {
  value = "${aws_subnet.private.id}"
}

output "public-sg" {
  value = "${aws_security_group.public.id}"
}
