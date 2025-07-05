locals {
  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = true

    tags = merge(
        var.sg_tags,
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-${var.sg_name}" # users will understand this is created for particular project and sg_name
        }
    )

  }
}
