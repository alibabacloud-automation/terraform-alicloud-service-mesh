output "network_vpc_id" {
  description = "The id of vpc."
  value       = module.vpc.this_vpc_id
}

output "network_vswitche_list" {
  description = "The id list of VSwitch."
  value       = module.vpc.this_vswitch_ids
}

output "service_mesh_id" {
  description = "The resource ID in terraform of Service Mesh."
  value       = module.example.service_mesh_id
}

output "service_mesh_status" {
  description = "The status of the resource."
  value       = module.example.service_mesh_status
}
