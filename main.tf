# Define required providers
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.48.0"
    }
  }

  cloud {
    hostname     = "ktcloud.inside-terraform.com"
    organization = "ktcloud"
    workspaces {
      name = "kt-poc"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = var.user_name
  tenant_name = var.tenant_name
  password    = var.password
  auth_url    = var.auth_url
  region      = var.region
}

provider "cloudstack" {
  api_url    = var.cloudstack_api_url
  api_key    = var.cloudstack_api_key
  secret_key = var.cloudstack_secret_key
}

resource "cloudstack_instance" "web" {
  name             = "instance_01"
  service_offering = "small"
  template         = "CentOS 7.9"
  zone             = "KOR-Seoul M"
}

# Create a web server
/*
resource "openstack_compute_instance_v2" "test-server" {
  # ...
}
*/