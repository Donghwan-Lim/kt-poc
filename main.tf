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
<<<<<<< HEAD
    hostname     = "ktcloud.inside-terraform.com"
    organization = "ktcloud"
=======
    hostname = "ktcloud.inside-terraform.com"
    organization = "Test_LABs"
>>>>>>> parent of 1e34dff (terraform fmt)
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
<<<<<<< HEAD

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

=======
*/
>>>>>>> parent of 1e34dff (terraform fmt)
# Create a web server
/*
resource "openstack_compute_instance_v2" "test-server" {
  # ...
}*/