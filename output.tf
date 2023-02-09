output "pub_ip" {
  value = aws_instance.webserver.public_ip
  description = "public IPv4 address"
}