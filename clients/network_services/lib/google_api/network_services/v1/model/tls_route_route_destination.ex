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

defmodule GoogleApi.NetworkServices.V1.Model.TlsRouteRouteDestination do
  @moduledoc """
  Describe the destination for traffic to be routed to.

  ## Attributes

  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - Required. The URL of a BackendService to route traffic to.
  *   `weight` (*type:* `integer()`, *default:* `nil`) - Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceName => String.t() | nil,
          :weight => integer() | nil
        }

  field(:serviceName)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.TlsRouteRouteDestination do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.TlsRouteRouteDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.TlsRouteRouteDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end