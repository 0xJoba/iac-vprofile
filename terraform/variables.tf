variable "region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-2"
}
 
variable "clustername" {
  description = "Base name for the EKS cluster (a random suffix will be appended)"
  type        = string
  default     = "vprofile-eks"
}
