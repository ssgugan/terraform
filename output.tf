output "pub_ip" {
  value = aws_instance.devserver.public_ip
  description = "public IPv4 address"
}
