resource "aws_instance" "myNexusInstance" {
      ami           = "ami-086df58ea1b1ad56a"
      key_name = var.key_name
      instance_type = "t2.medium"
      vpc_security_group_ids = [sg-0f2005415981b6c3d]
      tags= {
        Name = "nexus_instance"
      }
    }

