terraform {
  backend "s3" {
    # 나의 버킷 이름으로 변경한다
    bucket = "terraform-up-and-running-state-ys"
    key = "workspace-example/terraform.tfstate"
    region = "us-east-2"

    # 나의 DynamoDB 테이블 이름으로 변경한다
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}