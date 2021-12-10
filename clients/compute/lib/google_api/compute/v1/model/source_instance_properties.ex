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

defmodule GoogleApi.Compute.V1.Model.SourceInstanceProperties do
  @moduledoc """
  DEPRECATED: Please use compute#instanceProperties instead. New properties will not be added to this field.

  ## Attributes

  *   `canIpForward` (*type:* `boolean()`, *default:* `nil`) - Enables instances created based on this machine image to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  *   `deletionProtection` (*type:* `boolean()`, *default:* `nil`) - Whether the instance created from this machine image should be protected against deletion.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional text description for the instances that are created from this machine image.
  *   `disks` (*type:* `list(GoogleApi.Compute.V1.Model.SavedAttachedDisk.t)`, *default:* `nil`) - An array of disks that are associated with the instances that are created from this machine image.
  *   `guestAccelerators` (*type:* `list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - A list of guest accelerator cards' type and count to use for instances created from this machine image.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to instances that are created from this machine image.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The machine type to use for instances that are created from this machine image.
  *   `metadata` (*type:* `GoogleApi.Compute.V1.Model.Metadata.t`, *default:* `nil`) - The metadata key/value pairs to assign to instances that are created from this machine image. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Minimum cpu/platform to be used by instances created from this machine image. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  *   `networkInterfaces` (*type:* `list(GoogleApi.Compute.V1.Model.NetworkInterface.t)`, *default:* `nil`) - An array of network access configurations for this interface.
  *   `scheduling` (*type:* `GoogleApi.Compute.V1.Model.Scheduling.t`, *default:* `nil`) - Specifies the scheduling options for the instances that are created from this machine image.
  *   `serviceAccounts` (*type:* `list(GoogleApi.Compute.V1.Model.ServiceAccount.t)`, *default:* `nil`) - A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from this machine image. Use metadata queries to obtain the access tokens for these instances.
  *   `tags` (*type:* `GoogleApi.Compute.V1.Model.Tags.t`, *default:* `nil`) - A list of tags to apply to the instances that are created from this machine image. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canIpForward => boolean() | nil,
          :deletionProtection => boolean() | nil,
          :description => String.t() | nil,
          :disks => list(GoogleApi.Compute.V1.Model.SavedAttachedDisk.t()) | nil,
          :guestAccelerators => list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t()) | nil,
          :labels => map() | nil,
          :machineType => String.t() | nil,
          :metadata => GoogleApi.Compute.V1.Model.Metadata.t() | nil,
          :minCpuPlatform => String.t() | nil,
          :networkInterfaces => list(GoogleApi.Compute.V1.Model.NetworkInterface.t()) | nil,
          :scheduling => GoogleApi.Compute.V1.Model.Scheduling.t() | nil,
          :serviceAccounts => list(GoogleApi.Compute.V1.Model.ServiceAccount.t()) | nil,
          :tags => GoogleApi.Compute.V1.Model.Tags.t() | nil
        }

  field(:canIpForward)
  field(:deletionProtection)
  field(:description)
  field(:disks, as: GoogleApi.Compute.V1.Model.SavedAttachedDisk, type: :list)
  field(:guestAccelerators, as: GoogleApi.Compute.V1.Model.AcceleratorConfig, type: :list)
  field(:labels, type: :map)
  field(:machineType)
  field(:metadata, as: GoogleApi.Compute.V1.Model.Metadata)
  field(:minCpuPlatform)
  field(:networkInterfaces, as: GoogleApi.Compute.V1.Model.NetworkInterface, type: :list)
  field(:scheduling, as: GoogleApi.Compute.V1.Model.Scheduling)
  field(:serviceAccounts, as: GoogleApi.Compute.V1.Model.ServiceAccount, type: :list)
  field(:tags, as: GoogleApi.Compute.V1.Model.Tags)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SourceInstanceProperties do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SourceInstanceProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SourceInstanceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end