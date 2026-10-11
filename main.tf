resource "cloudflare_list_item" "list_items" {
  for_each = var.list_items

  account_id = each.value.account_id
  list_id    = each.value.list_id
  asn        = each.value.asn
  comment    = each.value.comment
  hostname   = each.value.hostname
  ip         = each.value.ip
  redirect   = each.value.redirect
}

