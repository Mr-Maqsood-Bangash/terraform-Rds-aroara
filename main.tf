


#Subnet Group
resource "aws_db_subnet_group" "rds-subnet_group" {
    name = "app-rds-subnet-group-dev"
    description = "subnet group for Mysql RDSinstance"
    subnet_ids = ["subnet-08641034542523a33", "subnet-0fdc982bf74633074" ]
    tags = {
        Name  = "app-rds-subnet-group"
        Environment ="dev"
        Project = "RDS-Automation"
    }
  
}
#security group
resource "aws_security_group" "rds_sg" {
    name = "app-rds-sg-dev"
    vpc_id = "vpc-04651e5956909f974"

    ingress  {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      Name = "app-rds-sg-group"
      Environment = "dev"
      Project = "RDS-Automation"

    }
  
}

#RDS MYSQL instance
resource "aws_db_instance" "MySQL" {
    identifier = "app-mysql-db-prod"
    engine = "MySQL"
    engine_version = "8.4.7"
    instance_class = "db.t4g.micro"
    allocated_storage = 20
    storage_type = "gp2"
    db_name = "appdb"
    username = local.db_credentials.username
    password = local.db_credentials.password

    multi_az = false
    publicly_accessible = false
    backup_retention_period = 1
    skip_final_snapshot = true
    deletion_protection = false
    vpc_security_group_ids = [ aws_security_group.rds_sg-dev.id ]
    db_subnet_group_name = aws_db_subnet_group.rds-subnet_group.name

    tags = {
        Name = "app-mysql-db"
        Environment = "dev"
        Project = "RDS-Automation"
    }
    
  
}