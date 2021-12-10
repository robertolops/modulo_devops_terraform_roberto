terraform {
  required_version = ">= 0.12" # colocando compatibilidade do terraform para 0.12
}

resource "aws_instance" "web" {
  ami           = "ami-0e66f5495b4efdd0f"
  subnet_id = "subnet-0e54f4a133587159a"
  instance_type = var.tipo
  key_name = "roberto-key-dev-pub"
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0b13be3620b0b4b3f"]
  root_block_device {
    encrypted = true
    volume_size = 8
  }
  tags = {
    Name = "${var.nome}",
    Itau = true
  }
}

/*
vpc-0cb70b292c86f2226
subnet-0e54f4a133587159a
ami-0e66f5495b4efdd0f
t2.micro
roberto-key-dev-priv
sg-0b13be3620b0b4b3f
*/