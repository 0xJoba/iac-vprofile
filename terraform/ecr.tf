resource "aws_ecr_repository" "vprofileapp" {
  name                 = "vprofileapp"
  image_tag_mutability = "MUTABLE"
  force_delete         = true 

  image_scanning_configuration {
    scan_on_push = true
  }
}
 
output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.vprofileapp.repository_url
}
