resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]

  tags = {
    Name        = var.application_name
    Environment = var.environment
    Owner       = var.owner
    RITM        = var.ritm_number
    ManagedBy   = "Spacelift"
  }
}
