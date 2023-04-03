# Project

This module does not provision any resources but serves to centrally define project configuration. Typically, the module should be invoked once per environment and region.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client"></a> [client](#input\_client) | Client name | `any` | n/a | yes |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | A delimiter to use when joining namespaces | `string` | `"-"` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment name | `any` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags that should be set on all resources | `map(string)` | `{}` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_context"></a> [context](#output\_context) | Merged input as a map |
| <a name="output_prefix"></a> [prefix](#output\_prefix) | A prefix to use for resource names. Does not include a final delimiter |
| <a name="output_tags"></a> [tags](#output\_tags) | Recommended tags to set on each resource |
<!-- END_TF_DOCS -->

