output "VPC" {
  value = "${aws_vpc.dev.id}"
}
output "public-subnet" {
  value = "${aws_subnet.public.id}"
}
