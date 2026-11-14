resource "aws_instance" "main" {
    instance_type = var.aws_instance
    ami = data.aws_ami.devops.id
    vpc_security_group_ids = var.sg_ids

    tags = merge(
        var.ec2_tags,
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-${var.component}"   #roboshop-dev-mongodb
        }
    )
}