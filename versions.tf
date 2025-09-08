terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 3.2, < 5.0.0"
    }
  }
  required_version = ">= 1.5"
}
