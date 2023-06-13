provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform_demo" {
    ami = "ami-09988af04120b3591"
    instance_type = "t2.nano"
    key_name = "awsdemo"
    tags ={
        Name = "jenkins"
        Env = "dev"
    }
}

output "public-ip" {
    value = aws_instance.terraform_demo.public_ip
}
output "public-dns" {
    value = aws_instance.terraform_demo.public_dns
}