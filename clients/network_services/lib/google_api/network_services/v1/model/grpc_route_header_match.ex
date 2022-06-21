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

defmodule GoogleApi.NetworkServices.V1.Model.GrpcRouteHeaderMatch do
  @moduledoc """
  A match against a collection of headers.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. The key of the header.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Required. The value of the header.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:key)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRouteHeaderMatch do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.GrpcRouteHeaderMatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRouteHeaderMatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end