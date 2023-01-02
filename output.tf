output "endpoint" {
  value = aws_db_instance.rds_db.endpoint
}
output "rdspassword" {
  value = random_string.rds_db_password.result
}
