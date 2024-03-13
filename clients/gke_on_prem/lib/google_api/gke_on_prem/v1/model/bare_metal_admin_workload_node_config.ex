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

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig do
  @moduledoc """
  BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.

  ## Attributes

  *   `maxPodsPerNode` (*type:* `String.t`, *default:* `nil`) - The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxPodsPerNode => String.t() | nil
        }

  field(:maxPodsPerNode)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminWorkloadNodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
