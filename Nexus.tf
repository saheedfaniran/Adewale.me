resource "aws_instance" "myNexusInstance" {
      ami           = "ami-086df58ea1b1ad56a"
      key_name = var.key_name
      instance_type = "t2.medium"
      vpc_security_group_ids = [aws_security_group.sonar-sg-2022.id]
      tags= {
        Name = "nexus_instance"
      }
    }

 resource "aws_security_group" "nexus-sg-2022" {
      name        = "security_nexus_group_2022"
      description = "security group for Nexus"

      ingress {
        from_port   = 8081
        to_port     = 8081
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

     ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

     # outbound from Sonar server
      egress {
        from_port   = 0
        to_port     = 65535
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      tags= {
        Name = "security_nexus"
      }
    }

