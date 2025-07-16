
variable "project" {}
variable "CreatedBy" {}
variable "aws_region" {}

variable "project_name" {}
variable "project_desc" {}
variable "build_timeout" {}
variable "artifacts_type" {}
variable "environment_compute_type" {}
variable "environment_image" {}
variable "environment_type" {}
variable "image_pull_credentials_type" {}
variable "privileged_mode_enabled" {}
variable "dockerhub_credentials" {}
variable "credential_provider" {}
variable "source_version" {}
variable "source_type" {}
variable "source_location" {}
variable "vpc_id" {}
variable "subnets" {}
variable "security_group_ids" {}
variable "environment_variables" {}
variable "cw_group_name" {}
variable "cw_stream_name" {}
variable "fetch_submodules" {}
variable "buildspec_file_absolute_path" {}
variable "role_name" {}
variable "policy_name" {}
variable "report_build_status" {}



variable "s3_bucket_id" {}
variable "artifacts_store_type" {}
variable "source_provider" {}
variable "input_artifacts" {}
variable "output_artifacts" {}
variable "full_repository_id" {}
variable "branch_name" {}
variable "codestar_connector_credentials" {}
variable "output_artifact_format" {}
variable "approve_sns_arn" {}
variable "approve_comment" {}
variable "approve_url" {}
