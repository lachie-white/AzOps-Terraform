resource "azurerm_policy_definition" "deploy_diagnostics_eventhub" {
  name                  = "Deploy-Diagnostics-EventHub"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Diagnostics-EventHub"
  description           = "Apply diagnostic settings for Event Hub Namespaces - Log Analytics"

  management_group_name = azurerm_management_group.es.name
  policy_rule           = var.policydefinition_deploy_diagnostics_eventhub_policyrule
  policy_parameters     = var.policyDefinition-deploy_diagnostics_eventhub-parameters
}

variable "policydefinition_deploy_diagnostics_eventhub_policyrule" {
    type = string
}

variable "policydefinition_deploy_diagnostics_eventhub_parameters" {
    type    = string
    default = ""
}