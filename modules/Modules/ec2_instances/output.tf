output "public-ip-address" {
  value = aws_instance.webserver.public_ip
}