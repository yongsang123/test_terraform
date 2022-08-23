## Step 1
resource "aws_lb" "example" {
  name = "terraform-ash-example"
  load_balancer_type = "application"
  subnets = data.aws_subnet_ids.default.ids
}