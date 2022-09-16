output "workspace_id" {
  description = "ID of managed workspace"
  value       = tfe_workspace.this_ws.id
}

output "workspace_name" {
  description = "Name of managed workspace"
  value       = tfe_workspace.this_ws.name
}

output "team_token" {
  value       = var.rbac && var.rbac_token ? tfe_team_token.token[0].token : null
  description = "Token for the team that was created as a part of the run"
}
