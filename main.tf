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
    hostname = "ktcloud.inside-terraform.com"
    organization = "Test_LABs"
    workspaces {
      name = "kt-poc"
    }
  }
}

# Configure the OpenStack Provider
/*
provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "pwd"
  auth_url    = "http://myauthurl:5000/v2.0"
  region      = "RegionOne"
}
*/
# Create a web server
/*
resource "openstack_compute_instance_v2" "test-server" {
  # ...
}*/