resource "aws_instance" "ec2_instance" {
  count         = var.count_value
  ami           = var.ami_id_value
  instance_type = var.instance_type_value
  tags = {
    Name = "${var.env_name}-instance"
  }
}
