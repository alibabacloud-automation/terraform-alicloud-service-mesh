Terraform Module for creating Service Mesh on Alibaba Cloud.

terraform-alicloud-service-mesh
=====================================================================

English | [简体中文](https://github.com/alibabacloud-automation/terraform-alicloud-service-mesh/blob/main/README-CN.md)

This module is used to create a Service Mesh with `VPC` and `Vswitch` under Alibaba Cloud.

These types of resources are supported:

* [alicloud_service_mesh_service_mesh](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/service_mesh_service_mesh)

## Usage

```hcl
module "example" {
  source                  = "terraform-alicloud-modules/service-mesh/alicloud"
  name                    = "tf-test"
  vpc_id                  = "vpc-12346xxxxxxxx"
  vswitche_ids            = ["vsw-12345xxxxxx"]
}
```
## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-mesh/tree/main/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_service_mesh_service_mesh.mesh](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/service_mesh_service_mesh) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_log"></a> [access\_log](#input\_access\_log) | The configuration of the access logging. | `map(string)` | `{}` | no |
| <a name="input_audit"></a> [audit](#input\_audit) | The configuration of the audit. | `map(string)` | `{}` | no |
| <a name="input_create_service_mesh"></a> [create\_service\_mesh](#input\_create\_service\_mesh) | Controls if service mesh should be created | `bool` | `false` | no |
| <a name="input_customized_zipkin"></a> [customized\_zipkin](#input\_customized\_zipkin) | Whether or not to enable the use of a custom zipkin. | `bool` | `false` | no |
| <a name="input_edition"></a> [edition](#input\_edition) | The type of the resource. Valid values: Default and Pro. Default:the standard. Pro:the Pro version. | `string` | `"Default"` | no |
| <a name="input_enable_locality_lb"></a> [enable\_locality\_lb](#input\_enable\_locality\_lb) | The enable locality lb. | `bool` | `false` | no |
| <a name="input_force"></a> [force](#input\_force) | This parameter is used for resource destroy. Default value is false. | `bool` | `false` | no |
| <a name="input_kiali"></a> [kiali](#input\_kiali) | The configuration of the Kiali. | `map(string)` | `{}` | no |
| <a name="input_load_balancer"></a> [load\_balancer](#input\_load\_balancer) | The configuration of the Load Balancer. | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the resource. | `string` | `""` | no |
| <a name="input_opa"></a> [opa](#input\_opa) | The open-door policy of agent (OPA) plug-in information. | `map(string)` | `{}` | no |
| <a name="input_outbound_traffic_policy"></a> [outbound\_traffic\_policy](#input\_outbound\_traffic\_policy) | The policy of the Out to the traffic. Valid values: ALLOW\_ANY and REGISTRY\_ONLY. | `string` | `"ALLOW_ANY"` | no |
| <a name="input_pilot"></a> [pilot](#input\_pilot) | The configuration of the Link trace sampling. | `map(string)` | `{}` | no |
| <a name="input_proxy"></a> [proxy](#input\_proxy) | The configuration of the Proxy. | `map(string)` | `{}` | no |
| <a name="input_service_mesh_version"></a> [service\_mesh\_version](#input\_service\_mesh\_version) | The version of the resource. you can look up the version using `alicloud_service_mesh_versions`. | `string` | `null` | no |
| <a name="input_sidecar_injector"></a> [sidecar\_injector](#input\_sidecar\_injector) | The configuration of the Sidecar injector. | `map(string)` | `{}` | no |
| <a name="input_telemetry"></a> [telemetry](#input\_telemetry) | Whether to enable acquisition Prometheus metrics | `bool` | `false` | no |
| <a name="input_tracing"></a> [tracing](#input\_tracing) | Whether to enable link trace | `bool` | `false` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC. | `string` | `""` | no |
| <a name="input_vswitche_ids"></a> [vswitche\_ids](#input\_vswitche\_ids) | The list of Virtual Switch. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_mesh_id"></a> [service\_mesh\_id](#output\_service\_mesh\_id) | The resource ID in terraform of Service Mesh. |
| <a name="output_service_mesh_status"></a> [service\_mesh\_status](#output\_service\_mesh\_status) | The status of the resource. |
<!-- END_TF_DOCS -->

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
