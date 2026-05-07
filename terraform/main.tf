data "aws_availability_zones" "available" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

locals {
  cluster_name = "${var.clustername}-${random_string.suffix.result}"
}
