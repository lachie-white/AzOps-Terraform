resource "azurerm_policy_definition" "deny_publicendpoint_storage" {
  name                  = "Deny-PublicEndpoint-Storage"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deny-PublicEndpoint-Storage"
  description           = "This policy restrict creation of storage accounts with IP Firewall exposed to all public endpoints"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deny_publicendpoint_storage_policyrule
  
}

variable "policydefinition_deny_publicendpoint_storage_policyrule" {
    type = string
}

variable "policydefinition_deny_publicendpoint_storage_parameters" {
    type    = string
    default = ""
}
