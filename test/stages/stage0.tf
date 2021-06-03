# Upload folder to provided COS bucket
module "upload_to_cos" {
  source             = "git::ssh://git@github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/upload-to-cos"
  api_key            = var.api_key
  cos_crn            = var.cos_crn
  endpoint           = var.endpoint
  bucket_name        = var.bucket_name
  path               = var.path
}
