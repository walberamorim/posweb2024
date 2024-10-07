data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = "chave_rsa"
  security_groups = [aws_security_group.posweb_myapp_2024_sg.name]
  user_data = base64encode(data.template_file.user_data.rendered)

  tags = {
    Name = "HelloWorld2"
  }
}