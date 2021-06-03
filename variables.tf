#########################################################################################
# IBM Cloud Hyper Protect Crypto Services Provisioning, Initialization and Managing Keys
# Copyright 2020 IBM
#########################################################################################


# COS Credentials
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
# Path to which CLOUDTKEFILES has to be exported
variable "path" {
  type        = string
  description = "Path at which the files are located"
}
variable "hpcs_instance_guid" {
  type        = string
  description = "HPCS Instance GUID"
}