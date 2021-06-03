variable "api_key" {
  type        = string
  description = "api key of the COS bucket"
}

variable "cos_crn" {
  type        = string
  description = "COS instance CRN"
}

variable "endpoint" {
  type        = string
  description = "COS endpoint"
}

variable "bucket_name" {
  type        = string
  description = "COS bucket name"
}

variable "path" {
  type        = string
  description = "Path where the files to upload are located"
}
