resource "aws_autoscaling_group" "example" {
  launch_configuration = "aws_launch_configuration.example.com"
  vpc_zone_identifier = data.aws_subnet_ids.default.ids

  max_size = 10
  min_size = 2

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "terraform-asg-example"
  }
}