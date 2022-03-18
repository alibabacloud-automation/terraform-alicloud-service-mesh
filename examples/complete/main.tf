data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_name           = "tf-test-service-mesh"
  vpc_cidr           = "172.16.0.0/16"
  vswitch_name       = "tf-test-service-mesh"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_zones.default.zones.0.id]
}

module "example" {
  source                  = "../.."
  create_service_mesh     = true
  name                    = var.name
  vpc_id                  = module.vpc.this_vpc_id
  vswitche_ids            = [module.vpc.this_vswitch_ids[0]]
  edition                 = var.edition
  force                   = var.force
  customized_zipkin       = var.customized_zipkin
  enable_locality_lb      = var.enable_locality_lb
  outbound_traffic_policy = var.outbound_traffic_policy
  telemetry               = var.telemetry
  tracing                 = true
  access_log              = var.access_log
  audit                   = var.audit
  kiali                   = var.kiali
  opa                     = var.opa
  proxy                   = var.proxy
  sidecar_injector        = var.sidecar_injector
  load_balancer = {
    api_server_public_eip = false
    pilot_public_eip      = false
  }
  pilot = {
    http10_enabled = false
    trace_sampling = 100
  }
}