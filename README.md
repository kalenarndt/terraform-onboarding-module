# terraform-onboarding-module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.26.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.variables](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.this_ws](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_agent_pool.this_pool](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/agent_pool) | data source |
| [tfe_organization.this_org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool_name"></a> [agent\_pool\_name](#input\_agent\_pool\_name) | (Optional) Name of the agent pool that will be created or used | `string` | `null` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | TFC Organization to build under | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | Map of all variables for workspace | `map(any)` | `{}` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | (Optional) - Map of objects taht will be used when attaching a VCS Repo to the Workspace. | `map(string)` | `{}` | no |
| <a name="input_workspace_agents"></a> [workspace\_agents](#input\_workspace\_agents) | (Optional) Conditional that allows for the use of existing or new agents within a given workspace | `bool` | `false` | no |
| <a name="input_workspace_auto_apply"></a> [workspace\_auto\_apply](#input\_workspace\_auto\_apply) | (Optional)  Setting if the workspace should automatically apply changes when a plan succeeds. | `string` | `true` | no |
| <a name="input_workspace_description"></a> [workspace\_description](#input\_workspace\_description) | Description of workspace | `string` | `""` | no |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | Name of the workspace to create | `string` | n/a | yes |
| <a name="input_workspace_plan_access_emails"></a> [workspace\_plan\_access\_emails](#input\_workspace\_plan\_access\_emails) | Emails for the plan users | `list(string)` | `[]` | no |
| <a name="input_workspace_read_access_emails"></a> [workspace\_read\_access\_emails](#input\_workspace\_read\_access\_emails) | Emails for the read users | `list(string)` | `[]` | no |
| <a name="input_workspace_tags"></a> [workspace\_tags](#input\_workspace\_tags) | Tags to apply to workspace | `list(string)` | `[]` | no |
| <a name="input_workspace_terraform_version"></a> [workspace\_terraform\_version](#input\_workspace\_terraform\_version) | Version of Terraform to run | `string` | `"latest"` | no |
| <a name="input_workspace_vcs_directory"></a> [workspace\_vcs\_directory](#input\_workspace\_vcs\_directory) | Working directory to use in repo | `string` | `"root_directory"` | no |
| <a name="input_workspace_write_access_emails"></a> [workspace\_write\_access\_emails](#input\_workspace\_write\_access\_emails) | Emails for the write users | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | ID of managed workspace |
| <a name="output_workspace_name"></a> [workspace\_name](#output\_workspace\_name) | Name of managed workspace |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
