resource "aws_launch_configuration" "example" {
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.instance.id]

  user_data = <<-EOF
              #! /bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p ${var.server_port} &
              EOF

  # ASG에서 시작 구성을 사용할 때 필요합니다
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_configuration
  lifecycle {
    create_before_destroy = true
  }
}