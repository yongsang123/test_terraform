terraform {
  backend "s3" {
    # 이전에 생성한 버킷 이름으로 변경
    bucket = "terraform-up-and-running-state-ys"
    key = "global/s3/terraform.tfstate"
    region = "us-east-2"

    # 이전에 생성한 DynamoDB 테이블 이름으로 변경
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}