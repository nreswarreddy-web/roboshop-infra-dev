resource "aws_ssm_parameter" "sg_id" {
    count= length(var.sg_names)
    name = "/${var.project}/${var.environment}/${var.sg_names[count.index]}_sg_id" 
    # we need to follow "/" to craete the parameters
    #/roboshop/dev/frontend_sg_id
    type = "String" # list
    value = module.sg[count.index].sg_id
    overwrite = true
}