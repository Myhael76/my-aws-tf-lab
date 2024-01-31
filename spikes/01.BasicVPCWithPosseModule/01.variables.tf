# Regions of interest, usually use one, but keep the option open
variable "deployment_regions_list"{
  type = list(string)
  default = ["eu-central-1"]
}

variable "spike_tags" {
  type = map(string)
  default = {
    "Purpose" = "spike"
  }
}
