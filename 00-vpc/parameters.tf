resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project}/${var.environment}/vpc_id" # we need to follow "/" to craete the parameters
    type = "String" # list
    value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project}/${var.environment}/public_subnet_ids"
  type  = "StringList" # stringlist we have to select baecaz it will come vpic under list soo
  value = join(",", module.vpc.public_subnet_ids)  # we need , between vpc_id 
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project}/${var.environment}/database_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.database_subnet_ids)
}