name                    = "update-tf-name"
edition                 = "Pro"
force                   = true
customized_zipkin       = true
enable_locality_lb      = true
outbound_traffic_policy = "ALLOW_ANY"
telemetry               = true
access_log = {
  enabled = true
}
audit = {
  enabled = true
  project = ""
}
kiali = {
  enabled = true
}
opa = {
  enabled        = true
  limit_cpu      = "1"
  limit_memory   = "512Mi"
  log_level      = "info"
  request_cpu    = "1"
  request_memory = "512Mi"
}
proxy = {
  limit_cpu      = "2000m"
  limit_memory   = "1024Mi"
  request_cpu    = "100m"
  request_memory = "128Mi"
}
sidecar_injector = {
  auto_injection_policy_enabled = true
  enable_namespaces_by_default  = true
  limit_cpu                     = "4000m"
  limit_memory                  = "2048Mi"
  request_cpu                   = "1000m"
  request_memory                = "512Mi"
}