resource "null_resource" "configure_server" {
  triggers = {
    trigger = aws_eip.ec2_ip.public_ip
  }
  provisioner "local-exec" {
    working_dir = "./ansible"
    command     = "ansible-playbook --inventory ${aws_eip.ec2_ip.public_ip}, --private-key ${var.ssh_key_private} --user ec2-user docker-playbook.yml"
  }
} 