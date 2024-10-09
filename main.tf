# Dev infra
module "dev-demo-app" {
  source              = "./modules/infra"
  count_value         = 2
  aws-region-value    = "us-east-1"
  env_name            = "dev"
  instance_type_value = "t2.micro"
  ami_id_value        = "ami-0866a3c8686eaeeba"
  bucket_name_value   = "demo-infra-bucket-s3"
  table_name_value    = "dynamodb-table-demo"
}

# Stage / QA infra
module "QA-demo-app" {
  source              = "./modules/infra"
  count_value         = 2
  aws-region-value    = "us-east-1"
  env_name            = "qa"
  instance_type_value = "t2.micro"
  ami_id_value        = "ami-0fff1b9a61dec8a5f"
  bucket_name_value   = "demo-infra-bucket-s3"
  table_name_value    = "dynamodb-table-demo"
}


# Prd infra
module "Prod-demo-app" {
  source              = "./modules/infra"
  count_value         = 2
  aws-region-value    = "us-east-1"
  env_name            = "prod"
  instance_type_value = "t2.medium"
  ami_id_value        = "ami-0583d8c7a9c35822c"
  bucket_name_value   = "demo-infra-bucket-s3"
  table_name_value    = "dynamodb-table-demo"
}