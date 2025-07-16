# terraform apply -var-file="dev-app.tfvars"
project = "stage_gateway_automation"
aws_region = "eu-west-2"
createdby  = "harsha"


project_name = "stage_gateway_automation"
project_desc = "aws_codebuild_project"
environment_compute_type = "BUILD_GENERAL1_SMALL"
environment_image ="hashicorp/terraform:1.2.2"
environment_type = "LINUX_CONTAINER"
dockerhub_credentials = ""
credential_provider = "SECRETS_MANAGER"
environment_variables = [
    {
        name = "KEY"
        value = "VALUE"
        type = "PLAINTEXT"
    }
]
report_build_status = false
source_version = "master"
buildspec_file_absolute_path = "./buildspec/apply-buildspec.yml"
//vpc_id = ""
//subnets = [""]
//security_group_ids = [""]
source_location = "https://github.com/harsha81860/stage_gateway_prod.git"
s3_bucket_id = "codepipeline-eu-west-2-919922704011"
full_repository_id = "harsha81860/stage_gateway_prod"
codestar_connector_credentials = "arn:aws:codeconnections:eu-west-2:567404226201:connection/7ec5009b-fc88-45ad-b0d9-1b26fc974d01"