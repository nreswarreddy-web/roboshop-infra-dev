# module "mongodb_sg"{
#     source = "git::https://github.com/nreswarreddy-web/terraform-aws-sg.git?ref=main"
#     project= var.project
#     environment = var.environment
#     sg_name = var.mongodb_sg_name
#     vpc_id = local.vpc_id

# }

module "sg"{
    count= length(var.sg_names)
    source = "git::https://github.com/nreswarreddy-web/terraform-aws-sg.git?ref=main"
    project= var.project
    environment = var.environment
    sg_name = replace(var.sg_names[count.index],"_","-")
    vpc_id = local.vpc_id

}

