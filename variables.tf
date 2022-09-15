# Organization level variables
variable "organization" {
  description = "TFC Organization to build under"
  type        = string
}

# Workspace level variables
variable "workspace_name" {
  description = "Name of the workspace to create"
  type        = string
}

variable "workspace_description" {
  description = "Description of workspace"
  type        = string
  default     = ""
}

variable "workspace_terraform_version" {
  description = "Version of Terraform to run"
  type        = string
  default     = "latest"
}

variable "workspace_tags" {
  description = "Tags to apply to workspace"
  type        = list(string)
  default     = []
}


## VCS variables (existing VCS connection)
variable "vcs_repo" {
  description = "(Optional) - Map of objects taht will be used when attaching a VCS Repo to the Workspace. "
  default     = {}
  type        = map(string)
}

variable "workspace_vcs_directory" {
  description = "Working directory to use in repo"
  type        = string
  default     = "root_directory"
}

# Variables
variable "variables" {
  description = "Map of all variables for workspace"
  type        = map(any)
  default     = {}
}

# # RBAC
# ## Workspace owner (exising org user)
variable "workspace_owner_email" {
  description = "Email for the owner of the account"
  type        = string
  default     = ""
}


variable "rbac" {
  type        = bool
  description = "(Optional) Conditional boolean that allows for the creation for an owner team for the workspaces that will be built by this module"
  default     = false
}

## Additional read users (existing org user)
variable "workspace_read_access_emails" {
  description = "Emails for the read users"
  type        = list(string)
  default     = []
}

variable "organization_access" {
  type        = map(bool)
  description = "Permissions that will be added for the team at the organization level"
  default = {
    "manage_vcs_settings"     = false
    "manage_providers"        = false
    "manage_modules"          = false
    "manage_run_tasks"        = false
    "manage_workspaces"       = false
    "manage_policies"         = false
    "manage_policy_overrides" = false
  }
}

variable "rbac_token" {
  type        = bool
  description = "(Optional) Conditonal that outputs a team token for the team that was created"
  default     = true
}

## Additional write users (existing org user)
variable "workspace_write_access_emails" {
  description = "Emails for the write users"
  type        = list(string)
  default     = []
}

## Additional plan users (existing org user)
variable "workspace_plan_access_emails" {
  description = "Emails for the plan users"
  type        = list(string)
  default     = []
}




## Kalen Additions

variable "agent_pool_name" {
  type        = string
  description = "(Optional) Name of the agent pool that will be created or used"
  default     = null
}

variable "workspace_agents" {
  type        = bool
  description = "(Optional) Conditional that allows for the use of existing or new agents within a given workspace"
  default     = false
}

variable "workspace_auto_apply" {
  type        = string
  description = "(Optional)  Setting if the workspace should automatically apply changes when a plan succeeds."
  default     = false
}

variable "execution_mode" {
  type        = string
  description = "(Optional) Defines the execution mode of the Workspace. Defaults to remote"
  default     = "remote"
}

variable "remote_state" {
  type        = bool
  description = "(Optional) Boolean that enables the sharing of remote state between this workspace and other workspaces within the environment"
  default     = false
}

variable "remote_state_consumers" {
  type        = set(string)
  description = "(Optional) Set of remote IDs of the workspaces that will consume the state of this workspace"
  default     = [""]
}

# variable "rbac" {
#   type = bool
#   description = "(Optional) Conditional that allows for RBAC policy to be created for the new workspaces"
#   default = true
# }
