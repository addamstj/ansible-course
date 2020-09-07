provider "aws" {
    region = "eu-west-2"
    access_key = "YOUR_ACCESS_KEY"
    secret_key = "YOUR_SECRET_KEY"
}

resource "aws_instance" "ec2" {
    ami = "ami-0a13d44dccf1f5cf6"
    instance_type = "t2.micro"
    key_name = "ansible_lnd_key"
    security_groups = ["ansible-SG"]
    tags = {
        Name = "Ansible"
    }
    
    provisioner "local-exec" {
        command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key /Users/Keys/ansible_lnd_key.pem -i ${aws_instance.ec2.public_ip}, playbook.yaml"
    }  
}