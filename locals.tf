locals  {
  common_tags = {
        environment = var.environment
        project = var.project
        component = var.component
        terraform = true
    }
}