# terraform-free-twobox
Two basic online servers the OCI free tier

Cobbled from:
https://github.com/oracle-terraform-modules/terraform-oci-base

Creates:
A VCN, NAT/internet and service gateways, network firewalls

==Why all this stuff, instead of just using the web console?

Because internet access is good, and having the available service gateways is good. Repeatable builds using terraform allows setup and teardown experiementing.

==Wny not just use terraform-oci-base

Because a bastion is not needed (though, for most public facing sites, with multiple nodes, one should be used), and -base does not include the servers needed.

==Why not just use the three-tier+load balancer+npm+docker+database+webshop from https://github.com/oci-quickstart/oci-cloudnative for getting comfortable?

That's a good question, the short answer is that there's an awful lot in there.

It's designed around a hands-off metaphor, so it's great for "throw my tested and debugged stuff in the could", but it doesn't have any remote login, there's not a lot of "fiddle room" to poke in the machines, they're in a private network, disconnected, built with the rousouce manager, etc.

Once somebody is ready to go into multiple network tiers, builders that build builds, mushop is a much better starting point.

==Using this
Simplified starting list:
# Get a tenancy https://www.oracle.com/cloud/free/
# Make a compartment https://docs.cloud.oracle.com/iaas/Content/Identity/Tasks/managingcompartments.htm
# Get terraform downloaded/running locally https://www.terraform.io/downloads.html
# Configure terraform variables to use settings for your tenancy.
## API stuffs to make a ~/.oci folder, to run commands against your tenancy: https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm
## Configure terraform to use the User/Compartment/Tenancy OCID's in a copy of tfvars.
### You can also over-ride these kinds of things with TF_VARS environment variables

