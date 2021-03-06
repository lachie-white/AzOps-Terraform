resource "azurerm_policy_definition" "deploy_diagnostics_iothub" {
  name                  = "Deploy-Diagnostics-iotHub"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Diagnostics-iotHub"
  description           = "Apply diagnostic settings for IoT Hubs - Log Analytics"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deploy_diagnostics_iothub_policyrule
  parameters            = var.policydefinition_deploy_diagnostics_iothub_parameters
}

variable "policydefinition_deploy_diagnostics_iothub_policyrule" {
    type = string
}

variable "policydefinition_deploy_diagnostics_iothub_parameters" {
    type    = string
    default = ""
}
