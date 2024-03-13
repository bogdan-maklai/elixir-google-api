# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminCluster do
  @moduledoc """
  Resource that represents a bare metal admin cluster.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  *   `bareMetalVersion` (*type:* `String.t`, *default:* `nil`) - The Anthos clusters on bare metal version for the bare metal admin cluster.
  *   `binaryAuthorization` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BinaryAuthorization.t`, *default:* `nil`) - Binary Authorization related configurations.
  *   `clusterOperations` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminClusterOperationsConfig.t`, *default:* `nil`) - Cluster operations configuration.
  *   `controlPlane` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig.t`, *default:* `nil`) - Control plane configuration.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this bare metal admin cluster was created.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  *   `description` (*type:* `String.t`, *default:* `nil`) - A human readable description of this bare metal admin cluster.
  *   `endpoint` (*type:* `String.t`, *default:* `nil`) - Output only. The IP address name of bare metal admin cluster's API server.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  *   `fleet` (*type:* `GoogleApi.GKEOnPrem.V1.Model.Fleet.t`, *default:* `nil`) - Output only. Fleet configuration for the cluster.
  *   `loadBalancer` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig.t`, *default:* `nil`) - Load balancer configuration.
  *   `localName` (*type:* `String.t`, *default:* `nil`) - Output only. The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  *   `maintenanceConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminMaintenanceConfig.t`, *default:* `nil`) - Maintenance configuration.
  *   `maintenanceStatus` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminMaintenanceStatus.t`, *default:* `nil`) - Output only. MaintenanceStatus representing state of maintenance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The bare metal admin cluster resource name.
  *   `networkConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminNetworkConfig.t`, *default:* `nil`) - Network configuration.
  *   `nodeAccessConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminNodeAccessConfig.t`, *default:* `nil`) - Node access related configurations.
  *   `nodeConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig.t`, *default:* `nil`) - Workload node configuration.
  *   `osEnvironmentConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminOsEnvironmentConfig.t`, *default:* `nil`) - OS environment related configurations.
  *   `proxy` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminProxyConfig.t`, *default:* `nil`) - Proxy configuration.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. If set, there are currently changes in flight to the bare metal Admin Cluster.
  *   `securityConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminSecurityConfig.t`, *default:* `nil`) - Security related configuration.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the bare metal admin cluster.
  *   `status` (*type:* `GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.t`, *default:* `nil`) - Output only. ResourceStatus representing detailed cluster status.
  *   `storage` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig.t`, *default:* `nil`) - Storage configuration.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of the bare metal admin cluster.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this bare metal admin cluster was last updated.
  *   `validationCheck` (*type:* `GoogleApi.GKEOnPrem.V1.Model.ValidationCheck.t`, *default:* `nil`) - Output only. ValidationCheck representing the result of the preflight check.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :bareMetalVersion => String.t() | nil,
          :binaryAuthorization => GoogleApi.GKEOnPrem.V1.Model.BinaryAuthorization.t() | nil,
          :clusterOperations =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminClusterOperationsConfig.t() | nil,
          :controlPlane =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :endpoint => String.t() | nil,
          :etag => String.t() | nil,
          :fleet => GoogleApi.GKEOnPrem.V1.Model.Fleet.t() | nil,
          :loadBalancer =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig.t() | nil,
          :localName => String.t() | nil,
          :maintenanceConfig =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminMaintenanceConfig.t() | nil,
          :maintenanceStatus =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminMaintenanceStatus.t() | nil,
          :name => String.t() | nil,
          :networkConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminNetworkConfig.t() | nil,
          :nodeAccessConfig =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminNodeAccessConfig.t() | nil,
          :nodeConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig.t() | nil,
          :osEnvironmentConfig =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminOsEnvironmentConfig.t() | nil,
          :proxy => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminProxyConfig.t() | nil,
          :reconciling => boolean() | nil,
          :securityConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminSecurityConfig.t() | nil,
          :state => String.t() | nil,
          :status => GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.t() | nil,
          :storage => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :validationCheck => GoogleApi.GKEOnPrem.V1.Model.ValidationCheck.t() | nil
        }

  field(:annotations, type: :map)
  field(:bareMetalVersion)
  field(:binaryAuthorization, as: GoogleApi.GKEOnPrem.V1.Model.BinaryAuthorization)

  field(:clusterOperations, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminClusterOperationsConfig)

  field(:controlPlane, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:description)
  field(:endpoint)
  field(:etag)
  field(:fleet, as: GoogleApi.GKEOnPrem.V1.Model.Fleet)
  field(:loadBalancer, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig)
  field(:localName)
  field(:maintenanceConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminMaintenanceConfig)
  field(:maintenanceStatus, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminMaintenanceStatus)
  field(:name)
  field(:networkConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminNetworkConfig)
  field(:nodeAccessConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminNodeAccessConfig)
  field(:nodeConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig)
  field(:osEnvironmentConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminOsEnvironmentConfig)
  field(:proxy, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminProxyConfig)
  field(:reconciling)
  field(:securityConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminSecurityConfig)
  field(:state)
  field(:status, as: GoogleApi.GKEOnPrem.V1.Model.ResourceStatus)
  field(:storage, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminStorageConfig)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:validationCheck, as: GoogleApi.GKEOnPrem.V1.Model.ValidationCheck)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminCluster do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
