resource "aws_ssm_parameter" "rabbitmq_user" {
  name  = "/${var.project}/${var.environment}/rabbitmq_user"
  type  = "String"
  value = "roboshop"
}

resource "aws_ssm_parameter" "rabbitmq_password" {
  name  = "/${var.project}/${var.environment}/rabbitmq_password"
  type  = "SecureString"
  value = "roboshop123"
}