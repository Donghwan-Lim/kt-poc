# Define required providers
terraform {
<<<<<<< HEAD
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.48.0"
    }
  }
=======
  required_version = ">= 0.14.0"
>>>>>>> db602dca64c5ccbe3b8d6d567a82775fede0e0cf

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

<<<<<<< HEAD
# Configure the OpenStack Provider
/*
=======
############ OpenStack Provider & Compute_Instance CODE ###############
>>>>>>> db602dca64c5ccbe3b8d6d567a82775fede0e0cf
provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "pwd"
  auth_url    = "http://myauthurl:5000/v2.0"
  region      = "RegionOne"
}
<<<<<<< HEAD

resource "openstack_compute_instance_v2" "OS_Server_01" {
  name      = "OS_Server_01"
  image_id  = "ad091b52-742f-469e-8f3c-fd81cadf0743"
  flavor_id = "3"
  #key_pair        = "my_key_pair_name"
  security_groups = ["${openstack_compute_secgroup_v2.OS_Security_Group_01.id}"]

  network {
    name = openstack_networking_network_v2.OS_Network_01.id
  }
}

resource "openstack_compute_secgroup_v2" "OS_Security_Group_01" {
  name        = "OS_Security_Group_01"
  description = "my security group"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

resource "openstack_networking_network_v2" "OS_Network_01" {
  name           = "OS_Network_01"
  admin_state_up = "true"
}

resource "openstack_blockstorage_volume_v2" "OS_Disk_01" {
  name = "OS_Disk_01"
  size = 20
}

resource "openstack_compute_volume_attach_v2" "attached" {
  instance_id = openstack_compute_instance_v2.myinstance.id
  volume_id   = openstack_blockstorage_volume_v2.myvol.id
}

############ Cloud Stack Provider & Instance CODE ###############
/* Cloud Stack Code Comment OUT.
provider "cloudstack" {
  api_url    = var.cloudstack_api_url
  api_key    = var.cloudstack_api_key
  secret_key = var.cloudstack_secret_key
}

resource "cloudstack_instance" "CS_Server_01" {
  name             = "CS_Server_01"
  service_offering = "small"
  template         = "CentOS 7.9"
  zone             = "KOR-Seoul M"
}

<<<<<<< HEAD
=======
*/
>>>>>>> parent of 1e34dff (terraform fmt)
=======
resource "cloudstack_disk" "CS_Disk_01" {
  name               = "test-disk"
  attach             = "true"
  disk_offering      = "custom"
  size               = 50
  virtual_machine_id = cloudstack_instance.Cloud_Stack_Server.virtual_machine_id
  zone               = "zone-1"
}
*/
>>>>>>> db602dca64c5ccbe3b8d6d567a82775fede0e0cf
# Create a web server
/*
resource "openstack_compute_instance_v2" "test-server" {
  # ...
}*/