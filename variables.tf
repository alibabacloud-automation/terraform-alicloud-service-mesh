variable "create_service_mesh" {
  description = "Controls if service mesh should be created"
  type        = bool
  default     = false
}

variable "name" {
  description = "The name of the resource."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = ""
}

variable "vswitche_ids" {
  description = "The list of Virtual Switch."
  type        = list(string)
  default     = []
}

variable "edition" {
  description = "The type of the resource. Valid values: Default and Pro. Default:the standard. Pro:the Pro version."
  type        = string
  default     = "Default"
}

variable "force" {
  description = "This parameter is used for resource destroy. Default value is false."
  type        = bool
  default     = false
}

variable "load_balancer" {
  description = "The configuration of the Load Balancer."
  type        = map(string)
  default     = {}
}

variable "customized_zipkin" {
  description = "Whether or not to enable the use of a custom zipkin."
  type        = bool
  default     = false
}

variable "enable_locality_lb" {
  description = "The enable locality lb."
  type        = bool
  default     = false
}

variable "outbound_traffic_policy" {
  description = "The policy of the Out to the traffic. Valid values: ALLOW_ANY and REGISTRY_ONLY."
  type        = string
  default     = "ALLOW_ANY"
}

variable "telemetry" {
  description = "Whether to enable acquisition Prometheus metrics"
  type        = bool
  default     = false
}

variable "tracing" {
  description = "Whether to enable link trace"
  type        = bool
  default     = false
}

variable "access_log" {
  description = "The configuration of the access logging."
  type        = map(string)
  default     = {}
}

variable "audit" {
  description = "The configuration of the audit."
  type        = map(string)
  default     = {}
}

variable "kiali" {
  description = "The configuration of the Kiali."
  type        = map(string)
  default     = {}
}

variable "opa" {
  description = "The open-door policy of agent (OPA) plug-in information."
  type        = map(string)
  default     = {}
}

variable "pilot" {
  description = "The configuration of the Link trace sampling."
  type        = map(string)
  default     = {}
}

variable "proxy" {
  description = "The configuration of the Proxy. "
  type        = map(string)
  default     = {}
}

variable "sidecar_injector" {
  description = "The configuration of the Sidecar injector."
  type        = map(string)
  default     = {}
}

variable "service_mesh_version" {
  description = "The version of the resource. you can look up the version using `alicloud_service_mesh_versions`."
  type        = string
  default     = null
}
