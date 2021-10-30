module "Security_grp" {
  source = "./security-group"
}






module "EC2" {
  source     = "./ec2"
  Sec_grp    = module.Security_grp.sg_id
}

provider "aws" {
  region = "us-east-1"
}

output "private_ip" {
  value = module.EC2.privateip
}