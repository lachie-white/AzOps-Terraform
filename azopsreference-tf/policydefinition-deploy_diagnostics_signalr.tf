resource "azurerm_policy_definition" "deploy_diagnostics_signalr" {
  name                  = "Deploy-Diagnostics-SignalR"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Diagnostics-SignalR"
  description           = "Apply diagnostic settings for SignalR - Log Analytics"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deploy_diagnostics_signalr_policyrule
  parameters            = var.policydefinition_deploy_diagnostics_signalr_parameters
}

variable "policydefinition_deploy_diagnostics_signalr_policyrule" {
    type = string
}

variable "policydefinition_deploy_diagnostics_signalr_parameters" {
    type    = string
    default = ""
}
