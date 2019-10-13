# Copyright 2017, 2019, Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl

locals {
  oci_base_vcn = {
    compartment_id         = var.oci_base_identity.compartment_id
    label_prefix           = var.oci_base_general.label_prefix
    create_nat_gateway     = var.oci_base_vcn.create_nat_gateway
    nat_gateway_name       = var.oci_base_vcn.nat_gateway_name
    create_service_gateway = var.oci_base_vcn.create_service_gateway
    service_gateway_name   = var.oci_base_vcn.service_gateway_name
    vcn_cidr               = var.oci_base_vcn.vcn_cidr
    vcn_dns_label          = var.oci_base_vcn.vcn_dns_label
    vcn_name               = var.oci_base_vcn.vcn_name
  }
}
