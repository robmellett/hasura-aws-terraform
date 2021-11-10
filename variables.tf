# -----------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# -----------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# -----------------------------------------------------------------------------
# PARAMETERS
# -----------------------------------------------------------------------------

variable "region" {
  description = "Region to deploy"
  default     = "ap-southeast-2" # Asia Pacific (Sydney)
}

variable "domain" {
  description = "Domain name. Service will be deployed using the hasura_subdomain"
}

variable "hasura_subdomain" {
  description = "The Subdomain for your hasura graphql service."
  default     = "hasura"
}

variable "app_subdomain" {
  description = "The Subdomain for your application that will make CORS requests to the hasura_subdomain"
  default     = "app"
}

variable "hasura_version_tag" {
  description = "The hasura graphql engine version tag"
  default     = "v2.0.9"
}

variable "hasura_admin_secret" {
  description = "The admin secret to secure hasura; for admin access"
}

variable "hasura_jwt_secret_key" {
  description = "The secret shared key for JWT verification"
}

variable "hasura_jwt_secret_algo" {
  description = "The algorithm for JWT verification (HS256 or RS256)"
  default     = "HS256"
}

variable "hasura_console_enabled" {
  description = "Should the Hasura Console web interface be enabled?"
  default     = "true"
}

variable "rds_username" {
  description = "The username for RDS"
}

variable "rds_password" {
  description = "The password for RDS"
}

variable "rds_db_name" {
  description = "The DB name in the RDS instance"
}

variable "rds_instance" {
  description = "The size of RDS instance, eg db.t2.micro"
}

variable "rds_storage_encrypted" {
  description = "Whether the data on the PostgreSQL instance should be encrpyted."
  default     = false
}

variable "az_count" {
  description = "How many AZ's to create in the VPC. Cannot be less than 2"
  default     = 2
}

variable "multi_az" {
  description = "Whether to deploy RDS and ECS in multi AZ mode or not"
  default     = true
}

variable "vpc_enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
  default     = false
}

variable "ecs_environment" {
  description = "Environment variables for ECS task: [ { name = \"foo\", value = \"bar\" }, ..]"
  default     = []
}

variable "additional_db_security_groups" {
  description = "List of Security Group IDs to have access to the RDS instance"
  default     = []
}

variable "create_iam_service_linked_role" {
  description = "Whether to create IAM service linked role for AWS ElasticSearch service. Can be only one per AWS account."
  default     = false
}