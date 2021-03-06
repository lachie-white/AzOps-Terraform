resource "azurerm_policy_definition" "deny_appgw_without_waf" {
  name                  = "Deny-AppGW-Without-WAF"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deny-AppGW-Without-WAF"
  description           = "null"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deny_appgw_without_waf_policyrule
  
}

variable "policydefinition_deny_appgw_without_waf_policyrule" {
    type = string
}

variable "policydefinition_deny_appgw_without_waf_parameters" {
    type    = string
    default = ""
}
