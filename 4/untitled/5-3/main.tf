resource "aws_security_group" "alb" {
  name = "terraform-example-alb"

  ## 인바운드 HTTP 트래픽 허용
  ingress {
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  ## 아웃바운드 모든 트래픽 허용
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}