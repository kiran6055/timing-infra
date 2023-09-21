

locals {
  PublicRT_tags = format("%s+%s",lookup(var.tags, "Name"), "publicRT")
}
# we have used concat two combine twostrings in terraform
locals {
  PrivateRT_tags = format("%s+%s",lookup(var.tags, "Name"), "privateRT")
}

locals {
  databaseRT_tags = format("%s+%s",lookup(var.tags, "Name"), "databaseRT")
}

locals {
  vpc_id = module.vpc.vpc_id
}
