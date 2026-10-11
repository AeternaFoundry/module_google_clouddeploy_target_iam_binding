variable "clouddeploy_target_iam_bindings" {
  description = <<EOT
Map of clouddeploy_target_iam_bindings, attributes below
Required:
    - members
    - name
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members  = set(string)
    name     = string
    role     = string
    location = optional(string)
    project  = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

