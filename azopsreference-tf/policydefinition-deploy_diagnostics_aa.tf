resource "azurerm_policy_definition" "deploy_diagnostics_aa" {
  name                  = "Deploy-Diagnostics-AA"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Diagnostics-AA"
  description           = "Apply diagnostic settings for Azure Automation Accounts - Log Analytics"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deploy_diagnostics_aa_policyrule
  parameters            = var.policydefinition_deploy_diagnostics_aa_parameters
}

variable "policydefinition_deploy_diagnostics_aa_policyrule" {
    type = string
}

variable "policydefinition_deploy_diagnostics_aa_parameters" {
    type    = string
    default = ""
}
