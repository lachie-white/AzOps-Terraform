resource "azurerm_policy_definition" "deploy_windows_domainjoin" {
  name                  = "Deploy-Windows-DomainJoin"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Windows-DomainJoin"
  description           = "null"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deploy_windows_domainjoin_policyrule
  parameters            = var.policydefinition_deploy_windows_domainjoin_parameters
}

variable "policydefinition_deploy_windows_domainjoin_policyrule" {
    type = string
}

variable "policydefinition_deploy_windows_domainjoin_parameters" {
    type    = string
    default = ""
}
