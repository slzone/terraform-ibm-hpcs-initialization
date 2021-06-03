# Upload files ot a COS bucket

This module will upload a file to COS bucket. If a folder path is provided, it will zip the files in the folder and upload the zip file to COS bucket.

## Terraform versions

Terraform 0.13.

## Prerequisite

* python version 3.5 and above: [Installation instructions](https://www.python.org/downloads/)

* pip version 3 and above

```bash
  python3 -m pip --version
```

`ibm-cos-sdk` package is required if initialization is performed using objeck storage example..

```bash
  pip3 install ibm-cos-sdk
```

* Login to IBM Cloud Account using cli

```bash
ibmcloud login --apikey `<XXXYourAPIKEYXXXXX>` -r `<region>` -g `<resource_group>`
```

* Generate oauth-tokens `ibmcloud iam oauth-tokens`. This step should be done as and when token expires. 

* To install tke plugin `ibmcloud plugin install tke`. Find more info on tke plugin [here](https://cloud.ibm.com/docs/hs-crypto?topic=hs-crypto-initialize-hsm#initialize-crypto-prerequisites)

## Example usage

### Upload TKE Files to COS

```terraform
module "upload_to_cos" {
  source             = "git::ssh://git@github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/upload-to-cos"
  depends_on         = [module.hpcs_init]
  api_key            = var.api_key
  cos_crn            = var.cos_crn
  endpoint           = var.endpoint
  bucket_name        = var.bucket_name
  path               = var.path
}
```

### Inputs

| Name              | Description                                                             | Type     | Required |
|-------------------|-------------------------------------------------------------------------|----------|----------|
| api_key           | Api key of the COS bucket.                                              | `string` | Yes      |
| cos_crn           | COS instance CRN.                                                       | `string` | Yes      |
| endpoint          | COS endpoint.                                                           | `string` | Yes      |
| bucket_name       | COS bucket name.                                                        | `string` | Yes      |
| path              | Path at which files to be uploaded are present                          | `string` | Yes      |

* Tke files in COS bucket: Tke files can be seen in COS bucket from console as shown below:
![here](./tke-file-cos-upload.png)

## Notes for developers

* Clone the repository:

```bash
  git clone git@github.com:slzone/terraform-ibm-hpcs-initialization.git
```
