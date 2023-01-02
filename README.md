```hcl
module "rds_db_post" {
  source   = "https://github.com/bahadauriaabhay/rdsmodule.git"

  create_aurora = false

  subnet_ids       = ["subnet-","subnet-"]
  vpc_id           = "vpc-"
  vpc_cidr         = ["172.31.0.0/16"]

  publicly_accessible = false
  allocated_storage = 10
  max_allocated_storage = 20
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t3.micro"
  database_name = "my_db"
  username   = "example"
  apply_immediately = false
  db_subnet_group_id = "subnet-group"

  common_tags = {
    "Project"     = "new-project",
    "Environment" = "dev"
  }

  environment = "dev"
  project_name_prefix = "dev-new-project"
}
```