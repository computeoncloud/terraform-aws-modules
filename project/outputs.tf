
output "prefix" {
  description = "A prefix to use for resource names. Does not include a final delimiter"
  value = join(
    "${var.delimiter}",
    [
      var.client,
      var.project,
      var.env
    ]
  )
}

output "context" {
  description = "Merged input as a map"
  value = {
    "project"    = var.project,
    "delimiter"  = var.delimiter,
    "client"     = var.client,
    "env"        = var.env,
    "extra_tags" = var.extra_tags,
  }
}

output "tags" {
  description = "Recommended tags to set on each resource"
  value = merge(var.extra_tags, {
    "coc:project" = var.project,
    "coc:client"  = var.client,
    "coc:env"     = var.env,
  })
}

output "domain" {
  description = "Domain name"
  value       = var.domain
}
