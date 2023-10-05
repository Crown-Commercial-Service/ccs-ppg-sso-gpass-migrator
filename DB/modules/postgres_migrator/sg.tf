resource "aws_security_group" "ecs_sg" {
  name = "ecs-migrate-service-sg"
  description = "security group for db migration-service"
  vpc_id = var.vpc_id
  tags = {
    Name = "ecs-service-sg"
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


#Allow EFS sg from above ecs sg:
#==============================

resource "aws_security_group_rule" "efs_sg_from_ecs_rule" {
  source_security_group_id  = aws_security_group.ecs_sg.id
  security_group_id         = aws_security_group.filesystem.id
  description               =   "Allow 2049 inwards"
  from_port                 = 2049
  protocol                  = "tcp"
  to_port                   = 2049
  type                      = "ingress"
}


resource "aws_security_group_rule" "rds_sg_from_ecs_rule" {
  source_security_group_id  = aws_security_group.ecs_sg.id
  security_group_id         = aws_security_group.filesystem.id
  description               =   "Allow 5432 inwards"
  from_port                 = 5432
  protocol                  = "tcp"
  to_port                   = 5432
  type                      = "ingress"
}


#Allow RDS sg from above ecs sg:
#==============================

# # resource "aws_security_group_rule" "db_sg_to_vpn_rule" {
# #   cidr_blocks               = ["18.135.251.191/32"]
# #   security_group_id         = var.db_clients_security_group_id
# #   description               =   "Allow 5432 inwards"
# #   from_port                 = 5432
# #   protocol                  = "tcp"
# #   to_port                   = 5432
# #   type                      = "ingress"
# }


resource "aws_security_group_rule" "db_sg_to_ecs_sg_rule" {
  source_security_group_id  = aws_security_group.ecs_sg.id
  security_group_id         = var.db_clients_security_group_id
  description               =   "Allow 5432 inwards"
  from_port                 = 5432
  protocol                  = "tcp"
  to_port                   = 5432
  type                      = "ingress"
}
