variable "list_items" {
  description = <<EOT
Map of list_items, attributes below
Required:
    - account_id
    - list_id
Optional:
    - asn
    - comment
    - hostname
    - ip
    - redirect
EOT

  type = map(object({
    account_id = string
    list_id    = string
    asn        = optional(number)
    comment    = optional(string)
    hostname = optional(object({
      exclude_exact_hostname = optional(bool)
      url_hostname           = string
    }))
    ip = optional(string)
    redirect = optional(object({
      include_subdomains    = optional(bool)
      preserve_path_suffix  = optional(bool)
      preserve_query_string = optional(bool)
      source_url            = string
      status_code           = optional(number)
      subpath_matching      = optional(bool)
      target_url            = string
    }))
  }))
}

