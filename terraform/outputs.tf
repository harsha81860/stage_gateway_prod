locals {
    tags = {
        Project = var.project
        CreatedBy = var.createdBy
        CreatedOn = timestamp()
        Environment = terraform.workspace
    }
}

module "codebuild" {
    source = "../modules/codebuild"
    project_name = var.project_name
    project_desc = var.project_desc
    environment_compute_type = var.environment_compute_type
    environment_image = var.environment_image
    environment_type = var.environment_type
    source_location = var.source_location
    environment_variables = var.environment_variable
    report_build_status = var.report_build_status
    source_version = var.source_version
    buildspec_file_absolute_path = var.buildspec_file_absolute_path
    tags = local.tags
}

module "codepipeline" {
    source = "../modules/codepipeline"
    project_name = var.project_name
    s3_bucket_id = var.s3_bucket_id
    full_repository_id = var.full_repository_id
    codestar_connector_credentials = var.codestar_connector_credentials
    tags = local.tags
}