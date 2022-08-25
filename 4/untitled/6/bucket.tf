# bucket.tf
# S3버킷을 생성
resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-up-and-running-state-ys"

  ## 실수로 S3 버킷을 삭제하는 것을 방지
  lifecycle {
    prevent_destroy = true
  }

  ## 코드 이력을 관리하기 위해 상태 파일의 버전 관리를 활성화
  versioning {
    enabled = true
  }

  ## 서버 측 암호화를 활성화
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
