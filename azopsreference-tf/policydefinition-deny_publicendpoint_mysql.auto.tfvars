policydefinition_deny_publicendpoint_mysql_policyrule = <<POLICYRULE
{
  "if": {
    "allOf": [
      {
        "field": "type",
        "equals": "Microsoft.DBforMySQL/servers"
      },
      {
        "field": "Microsoft.DBforMySQL/servers/publicNetworkAccess",
        "notequals": "Disabled"
      }
    ]
  },
  "then": {
    "effect": "Deny"
  }
}
POLICYRULE

