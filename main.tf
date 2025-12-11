module "vpc" {
      source = "git::https://github.com/Ritikrpati23032003/Terraform.git//day-14-modules-diff-env/modules/vpc"

    vpc_name= var.vpc_name
    vpc_cidr= var.vpc_cidr
    vpc_ig=var.vpc_ig
    pubic_subnet_1_name=var.public_subnet1
    pubic_subnet_1_cidr=var.public_subnet1_cidr
    pubic_subnet_2_name=var.public_subnet2
    pubic_subnet_2_cidr=var.public_subnet2_cidr
    az1=var.az1
    az2=var.az2
}

module "sg" {
  source = "git::https://github.com/Ritikrpati23032003/Terraform.git//day-14-modules-diff-env/modules/sg"
  vpc_id=module.vpc.vpc_id
  sg_tags=var.sg_tags
  ingress_rules=[
  for port in [22, 80, 443, 3306] : {
    description      = "Allow inbound traffic on port ${port}"
    from_port        = port
    to_port          = port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  }
]
}