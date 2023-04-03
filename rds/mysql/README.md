# RDS Mysql Module
This module is used to provision resources mysql RDS instance. 

## Example Usage

```terraform
module "mysql_rds_instance" {
  source                 = "terraform-aws-modules/rds/mysql"
  rds_id                 = "mysql-rds-instance"
  db_name                = "main"
  instance_type          = "db.t3.micro"
  multi_az               = true
  subnet_ids             = ["subnet-12345678", "subnet-87654321"]
  vpc_security_group_ids = ["sg-12345678"]
  username               = "admin"
  password               = "admin"
  tags = {
    Environment = "prod"
    Terraform   = "true"
  }
}
```