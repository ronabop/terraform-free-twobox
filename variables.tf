# Copyright 2017, 2019, Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl

# Identity and access parameters

variable "oci_base_identity" {
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_name     = string
    compartment_id       = string
    tenancy_id           = string
    user_id              = string
  })
  description = "identity and provider parameters"
}

# ssh keys

variable "oci_base_ssh_keys" {
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  description = "ssh keys"
}

# general oci parameters

variable "oci_base_general" {
  type = object({
    disable_auto_retries = bool
    label_prefix         = string
    region               = string
  })
  description = "general oci parameters"
  default = {
    disable_auto_retries = false
    label_prefix         = "base"
    region               = "us-phoenix-1"
  }
}

# networking parameters

variable "oci_base_vcn" {
  type = object({
    vcn_cidr               = string
    vcn_dns_label          = string
    vcn_name               = string
    create_nat_gateway     = bool
    nat_gateway_name       = string
    create_service_gateway = bool
    service_gateway_name   = string
  })
  description = "VCN basic parameters"
  default = {
    vcn_cidr               = "10.0.0.0/16"
    vcn_dns_label          = "base"
    vcn_name               = "base"
    create_nat_gateway     = false
    nat_gateway_name       = "nat"
    create_service_gateway = false
    service_gateway_name   = "sg"
  }
}

