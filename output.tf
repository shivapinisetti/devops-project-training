output vpc_arn {
  value       = "${aws_vpc.default.id}"
}
output subnet_id {
  value       = "${var.public_subnet3_cidr}"
}

output "bucket_arn" {
  value       = "my-terraform.tfstatebucket2"
}

