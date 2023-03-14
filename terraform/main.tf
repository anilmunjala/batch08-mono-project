resource "aws_instance" "key" {
ami = "ami-005f9685cb30f234b"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
key_name = "my-project-kp"
tags = {
Name = "project-instance"
Environment = "Prod"
}
}

