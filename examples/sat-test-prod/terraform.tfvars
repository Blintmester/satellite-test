# IBMCLOUD Authentication 

ibm_region = "us-south"
resource_group = "Default"

# Satellite Location and Host Variables

location = "blint-tf-test-11"
is_location_exist = false

managed_from = "dal10"
location_zones = ["gondor", "rohan", "mordor"]
coreos_enabled_location = true
coreos_host = true

pod_subnet = "10.69.0.0/16"
service_subnet = "192.168.42.0/24"

# VPC VSI Variables

# default
# cp_hosts = [ {
#     instance_type = "mx2-8x64"
#     count         = 3
# } ]

# A list of IBM host objects used for provisioning services on your location after setup, including instance_type and count.
addl_hosts = [ {
    instance_type = "mx2-8x64"
    count         = 6
} ]

# Prefix to the Names of the VPC Infrastructure resources
is_prefix = "blint-tf-test-11"

ssh_key_id = "r006-68ed9265-0e45-4b43-ab91-8537075f7c40"

worker_image = "rhcos-image" # default: "ibm-redhat-8-6-minimal-amd64-1"

# ROKS Cluster Variables

create_cluster = true
cluster = "blint-tf-test-11-cluster"
# Operating system must be one of: REDHAT_7_64, REDHAT_8_64, RHCOS.
operating_system = "RHCOS"
kube_version = "4.13_openshift" # "4.10_openshift"
worker_count = 6 # "Worker Count for default pool"

calico_ip_autodetection = {
  "can-reach" = "www.google.com",
}

# ROKS Cluster Worker Pool Variables

create_cluster_worker_pool = true
worker_pool_name = "blint-tf-test-11-worek-pool"
