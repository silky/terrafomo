-- This module is auto-generated.

{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE DeriveGeneric          #-}
{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE TypeFamilies           #-}
{-# LANGUAGE UndecidableInstances   #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Google.DataSource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Google.DataSource where

import Data.Text (Text)

import GHC.Base     (Eq)
import GHC.Generics (Generic)
import GHC.Show     (Show)

import Terrafomo.Syntax.Attribute (Attr, Computed)

import qualified Terrafomo.Google          as Qual
import qualified Terrafomo.Syntax.Provider as Qual
import qualified Terrafomo.Syntax.TH       as TH

{- | The @google_active_folder@ Google datasource.

Get an active folder within GCP by @display_name@ and @parent@ .
-}
data ActiveFolderDataSource = ActiveFolderDataSource
    { _display_name :: !(Attr Text)
    {- ^ (Required) The folder's display name. -}
    , _parent       :: !(Attr Text)
    {- ^ (Required) The resource name of the parent Folder or Organization. -}
    } deriving (Show, Generic)

type instance Computed ActiveFolderDataSource
    = '[ '("name", Text)
       {- - The resource name of the Folder. This uniquely identifies the folder. -}
       ]

$(TH.makeDataSource
    "google_active_folder"
    ''Qual.Google
    ''ActiveFolderDataSource)

{- | The @google_client_config@ Google datasource.

Use this data source to access the configuration of the Google Cloud
provider.
-}
data ClientConfigDataSource = ClientConfigDataSource
    { _project :: !(Attr Text)
    {- ^ - The ID of the project to apply any resources to. -}
    , _region  :: !(Attr Text)
    {- ^ - The region to operate under. -}
    } deriving (Show, Generic)

$(TH.makeDataSource
    "google_client_config"
    ''Qual.Google
    ''ClientConfigDataSource)

{- | The @google_compute_address@ Google datasource.

Get the IP address from a static address. For more information see the
official
<https://cloud.google.com/compute/docs/reference/latest/addresses/get>
documentation.
-}
data ComputeAddressDataSource = ComputeAddressDataSource
    { _name    :: !(Attr Text)
    {- ^ (Required) A unique name for the resource, required by GCE. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    , _region  :: !(Attr Text)
    {- ^ (Optional) The Region in which the created address reside. If it is not provided, the provider region is used. -}
    } deriving (Show, Generic)

type instance Computed ComputeAddressDataSource
    = '[ '("address", Text)
       {- - The IP of the created resource. -}
       , '("self_link", Text)
       {- - The URI of the created resource. -}
       , '("status", Text)
       {- - Indicates if the address is used. Possible values are: RESERVED or IN_USE. -}
       ]

$(TH.makeDataSource
    "google_compute_address"
    ''Qual.Google
    ''ComputeAddressDataSource)

{- | The @google_compute_global_address@ Google datasource.

Get the IP address from a static address reserved for a Global Forwarding
Rule which are only used for HTTP load balancing. For more information see
the official
<https://cloud.google.com/compute/docs/reference/latest/globalAddresses>
documentation.
-}
data ComputeGlobalAddressDataSource = ComputeGlobalAddressDataSource
    { _name    :: !(Attr Text)
    {- ^ (Required) A unique name for the resource, required by GCE. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    } deriving (Show, Generic)

type instance Computed ComputeGlobalAddressDataSource
    = '[ '("address", Text)
       {- - The IP of the created resource. -}
       , '("self_link", Text)
       {- - The URI of the created resource. -}
       , '("status", Text)
       {- - Indicates if the address is used. Possible values are: RESERVED or IN_USE. -}
       ]

$(TH.makeDataSource
    "google_compute_global_address"
    ''Qual.Google
    ''ComputeGlobalAddressDataSource)

{- | The @google_compute_image@ Google datasource.

Get information about a Google Compute Image. Check that your service
account has the @compute.imageUser@ role if you want to share
<https://cloud.google.com/compute/docs/images/sharing-images-across-projects>
from another project. If you want to use
<https://cloud.google.com/compute/docs/images#os-compute-support> , do not
forget to specify the dedicated project. For more information see
<https://cloud.google.com/compute/docs/images> and its
<https://cloud.google.com/compute/docs/reference/latest/images> .
-}
data ComputeImageDataSource = ComputeImageDataSource
    { _name    :: !(Attr Text)
    {- ^ or @family@ - (Required) The name of a specific image or a family. Exactly one of @name@ of @family@ must be specified. If @name@ is specified, it will fetch the corresponding image. If @family@ is specified, it will returns the latest image that is part of an image family and is not deprecated. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    } deriving (Show, Generic)

type instance Computed ComputeImageDataSource
    = '[ '("archive_size_bytes", Text)
       {- - The size of the image tar.gz archive stored in Google Cloud Storage in bytes. -}
       , '("creation_timestamp", Text)
       {- - The creation timestamp in RFC3339 text format. -}
       , '("description", Text)
       {- - An optional description of this image. -}
       , '("disk_size_gb", Text)
       {- - The size of the image when restored onto a persistent disk in gigabytes. -}
       , '("family", Text)
       {- - The family name of the image. -}
       , '("image_encryption_key_sha256", Text)
       {- - The <https://tools.ietf.org/html/rfc4648#section-4> encoded SHA-256 hash of the <https://cloud.google.com/compute/docs/disks/customer-supplied-encryption> that protects this image. -}
       , '("image_id", Text)
       {- - The unique identifier for the image. -}
       , '("label_fingerprint", Text)
       {- - A fingerprint for the labels being applied to this image. -}
       , '("labels", Text)
       {- - A map of labels applied to this image. -}
       , '("licenses", Text)
       {- - A list of applicable license URI. -}
       , '("name", Text)
       {- - The name of the image. -}
       , '("self_link", Text)
       {- - The URI of the image. -}
       , '("source_disk", Text)
       {- - The URL of the source disk used to create this image. -}
       , '("source_disk_encryption_key_sha256", Text)
       {- - The <https://tools.ietf.org/html/rfc4648#section-4> encoded SHA-256 hash of the <https://cloud.google.com/compute/docs/disks/customer-supplied-encryption> that protects this image. -}
       , '("source_disk_id", Text)
       {- - The ID value of the disk used to create this image. -}
       , '("source_image_id", Text)
       {- - The ID value of the image used to create this image. -}
       , '("status", Text)
       {- - The status of the image. Possible values are FAILED , PENDING , or READY . -}
       ]

$(TH.makeDataSource
    "google_compute_image"
    ''Qual.Google
    ''ComputeImageDataSource)

{- | The @google_compute_instance_group@ Google datasource.

Get a Compute Instance Group within GCE. For more information, see
<https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups>
and <https://cloud.google.com/compute/docs/reference/latest/instanceGroups>
-}
data ComputeInstanceGroupDataSource = ComputeInstanceGroupDataSource
    { _name    :: !(Attr Text)
    {- ^ (Required) The name of the instance group. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    , _zone    :: !(Attr Text)
    {- ^ (Required) The zone of the instance group. -}
    } deriving (Show, Generic)

type instance Computed ComputeInstanceGroupDataSource
    = '[ '("description", Text)
       {- - Textual description of the instance group. -}
       , '("instances", Text)
       {- - List of instances in the group. -}
       , '("named_port", Text)
       {- - List of named ports in the group. -}
       , '("network", Text)
       {- - The URL of the network the instance group is in. -}
       , '("self_link", Text)
       {- - The URI of the resource. -}
       , '("size", Text)
       {- - The number of instances in the group. -}
       ]

$(TH.makeDataSource
    "google_compute_instance_group"
    ''Qual.Google
    ''ComputeInstanceGroupDataSource)

{- | The @google_compute_lb_ip_ranges@ Google datasource.

Use this data source to access IP ranges in your firewall rules.
https://cloud.google.com/compute/docs/load-balancing/health-checks#health_check_source_ips_and_firewall_rules
-}
data ComputeLbIpRangesDataSource = ComputeLbIpRangesDataSource
    { _http_ssl_tcp_internal :: !(Attr Text)
    {- ^ - The IP ranges used for health checks when HTTP(S), SSL proxy, TCP proxy, and Internal load balancing is used -}
    , _network               :: !(Attr Text)
    {- ^ - The IP ranges used for health checks when Network load balancing is used -}
    } deriving (Show, Generic)

$(TH.makeDataSource
    "google_compute_lb_ip_ranges"
    ''Qual.Google
    ''ComputeLbIpRangesDataSource)

{- | The @google_compute_network@ Google datasource.

Get a network within GCE from its name.
-}
data ComputeNetworkDataSource = ComputeNetworkDataSource
    { _name    :: !(Attr Text)
    {- ^ (Required) The name of the network. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    } deriving (Show, Generic)

type instance Computed ComputeNetworkDataSource
    = '[ '("description", Text)
       {- - Description of this network. -}
       , '("gateway_ipv4", Text)
       {- - The IP address of the gateway. -}
       , '("network", Text)
       {- - The network name or resource link to the parent network of this network. -}
       , '("self_link", Text)
       {- - The URI of the resource. -}
       , '("subnetworks_self_links", Text)
       {- - the list of subnetworks which belong to the network -}
       ]

$(TH.makeDataSource
    "google_compute_network"
    ''Qual.Google
    ''ComputeNetworkDataSource)

{- | The @google_compute_region_instance_group@ Google datasource.

Get a Compute Region Instance Group within GCE. For more information, see
<https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups>
and
<https://cloud.google.com/compute/docs/reference/latest/regionInstanceGroups>
.
-}
data ComputeRegionInstanceGroupDataSource = ComputeRegionInstanceGroupDataSource
    { _name      :: !(Attr Text)
    {- ^ (Optional) The name of the instance group.  One of @name@ or @self_link@ must be provided. -}
    , _project   :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    , _region    :: !(Attr Text)
    {- ^ (Optional) The region in which the resource belongs.  If @self_link@ is provided, this value is ignored.  If neither @self_link@ nor @region@ are provided, the provider region is used. -}
    , _self_link :: !(Attr Text)
    {- ^ (Optional) The link to the instance group.  One of @name@ or @self_link@ must be provided. -}
    } deriving (Show, Generic)

type instance Computed ComputeRegionInstanceGroupDataSource
    = '[ '("instances", Text)
       {- - List of instances in the group, as a list of resources, each containing: -}
       , '("size", Text)
       {- - The number of instances in the group. -}
       ]

$(TH.makeDataSource
    "google_compute_region_instance_group"
    ''Qual.Google
    ''ComputeRegionInstanceGroupDataSource)

{- | The @google_compute_subnetwork@ Google datasource.

Get a subnetwork within GCE from its name and region.
-}
data ComputeSubnetworkDataSource = ComputeSubnetworkDataSource
    { _name    :: !(Attr Text)
    {- ^ - The name of the subnetwork. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) The project in which the resource belongs. If it is not provided, the provider project is used. -}
    , _region  :: !(Attr Text)
    {- ^ (Optional) The region this subnetwork has been created in. If unspecified, this defaults to the region configured in the provider. -}
    } deriving (Show, Generic)

type instance Computed ComputeSubnetworkDataSource
    = '[ '("description", Text)
       {- - Description of this subnetwork. -}
       , '("gateway_address", Text)
       {- - The IP address of the gateway. -}
       , '("ip_cidr_range", Text)
       {- - The IP address range that machines in this network are assigned to, represented as a CIDR block. -}
       , '("network", Text)
       {- - The network name or resource link to the parent network of this subnetwork. -}
       , '("private_ip_google_access", Text)
       {- - Whether the VMs in this subnet can access Google services without assigned external IP addresses. -}
       , '("secondary_ip_range", Text)
       {- - An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. Structure is documented below. -}
       , '("self_link", Text)
       {- - The URI of the created resource. -}
       ]

$(TH.makeDataSource
    "google_compute_subnetwork"
    ''Qual.Google
    ''ComputeSubnetworkDataSource)

{- | The @google_compute_zones@ Google datasource.

Provides access to available Google Compute zones in a region for a given
project. See more about
<https://cloud.google.com/compute/docs/regions-zones/regions-zones> in the
upstream docs.
-}
data ComputeZonesDataSource = ComputeZonesDataSource
    { _region :: !(Attr Text)
    {- ^ (Optional) - Region from which to list available zones. Defaults to region declared in the provider. -}
    , _status :: !(Attr Text)
    {- ^ (Optional) - Allows to filter list of zones based on their current status. Status can be either @UP@ or @DOWN@ . Defaults to no filtering (all available zones - both @UP@ and @DOWN@ ). -}
    } deriving (Show, Generic)

type instance Computed ComputeZonesDataSource
    = '[ '("names", Text)
       {- - A list of zones available in the given region -}
       ]

$(TH.makeDataSource
    "google_compute_zones"
    ''Qual.Google
    ''ComputeZonesDataSource)

{- | The @google_container_engine_versions@ Google datasource.

Provides access to available Google Container Engine versions in a zone for
a given project.
-}
data ContainerEngineVersionsDataSource = ContainerEngineVersionsDataSource
    { _project :: !(Attr Text)
    {- ^ (optional) - ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to. Defaults to the project that the provider is authenticated with. -}
    , _zone    :: !(Attr Text)
    {- ^ (required) - Zone to list available cluster versions for. Should match the zone the cluster will be deployed in. -}
    } deriving (Show, Generic)

type instance Computed ContainerEngineVersionsDataSource
    = '[ '("latest_master_version", Text)
       {- - The latest version available in the given zone for use with master instances. -}
       , '("latest_node_version", Text)
       {- - The latest version available in the given zone for use with node instances. -}
       , '("valid_master_versions", Text)
       {- - A list of versions available in the given zone for use with master instances. -}
       , '("valid_node_versions", Text)
       {- - A list of versions available in the given zone for use with node instances. -}
       ]

$(TH.makeDataSource
    "google_container_engine_versions"
    ''Qual.Google
    ''ContainerEngineVersionsDataSource)

{- | The @google_dns_managed_zone@ Google datasource.

Provides access to a zone's attributes within Google Cloud DNS. For more
information see <https://cloud.google.com/dns/zones/> and
<https://cloud.google.com/dns/api/v1/managedZones> .
-}
data DnsManagedZoneDataSource = DnsManagedZoneDataSource
    { _name    :: !(Attr Text)
    {- ^ (Required) A unique name for the resource. -}
    , _project :: !(Attr Text)
    {- ^ (Optional) ID of the project for the Google Cloud DNS zone. -}
    } deriving (Show, Generic)

type instance Computed DnsManagedZoneDataSource
    = '[ '("description", Text)
       {- - A textual description field. -}
       , '("dns_name", Text)
       {- - The DNS name of this zone, e.g. "terraform.io". -}
       , '("name_servers", Text)
       {- - The list of nameservers that will be authoritative for this domain. Use NS records to redirect from your DNS provider to these names, thus making Google Cloud DNS authoritative for this zone. -}
       ]

$(TH.makeDataSource
    "google_dns_managed_zone"
    ''Qual.Google
    ''DnsManagedZoneDataSource)

{- | The @google_iam_policy@ Google datasource.

Generates an IAM policy document that may be referenced by and applied to
other Google Cloud Platform resources, such as the @google_project@
resource.
-}
data IamPolicyDataSource = IamPolicyDataSource
    { _binding :: !(Attr Text)
    {- ^ (Required) - A nested configuration block (described below) defining a binding to be included in the policy document. Multiple @binding@ arguments are supported. -}
    } deriving (Show, Generic)

type instance Computed IamPolicyDataSource
    = '[ '("policy_data", Text)
       {- - The above bindings serialized in a format suitable for referencing from a resource that supports IAM. -}
       ]

$(TH.makeDataSource
    "google_iam_policy"
    ''Qual.Google
    ''IamPolicyDataSource)

{- | The @google_storage_object_signed_url@ Google datasource.

The Google Cloud storage signed URL data source generates a signed URL for a
given storage object. Signed URLs provide a way to give time-limited read or
write access to anyone in possession of the URL, regardless of whether they
have a Google account. For more info about signed URL's is available
<https://cloud.google.com/storage/docs/access-control/signed-urls> .
-}
data StorageObjectSignedUrlDataSource = StorageObjectSignedUrlDataSource
    { _bucket      :: !(Attr Text)
    {- ^ (Required) The name of the bucket to read the object from -}
    , _credentials :: !(Attr Text)
    {- ^ (Optional) What Google service account credentials json should be used to sign the URL. This data source checks the following locations for credentials, in order of preference: data source @credentials@ attribute, provider @credentials@ attribute and finally the GOOGLE_APPLICATION_CREDENTIALS environment variable. -}
    , _duration    :: !(Attr Text)
    {- ^ (Optional) For how long shall the signed URL be valid (defaults to 1 hour - i.e. @1h@ ). See <https://golang.org/pkg/time/#ParseDuration> for info on valid duration formats. -}
    , _http_method :: !(Attr Text)
    {- ^ (Optional) What HTTP Method will the signed URL allow (defaults to @GET@ ) -}
    , _path        :: !(Attr Text)
    {- ^ (Required) The full path to the object inside the bucket -}
    } deriving (Show, Generic)

type instance Computed StorageObjectSignedUrlDataSource
    = '[ '("signed_url", Text)
       {- - The signed URL that can be used to access the storage object without authentication. -}
       ]

$(TH.makeDataSource
    "google_storage_object_signed_url"
    ''Qual.Google
    ''StorageObjectSignedUrlDataSource)
