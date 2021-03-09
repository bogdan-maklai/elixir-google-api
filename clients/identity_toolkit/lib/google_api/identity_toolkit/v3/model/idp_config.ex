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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdpConfig do
  @moduledoc """
  Template for a single idp configuration.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - OAuth2 client ID.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether this IDP is enabled.
  *   `experimentPercent` (*type:* `integer()`, *default:* `nil`) - Percent of users who will be prompted/redirected federated login for this IDP.
  *   `provider` (*type:* `String.t`, *default:* `nil`) - OAuth2 provider.
  *   `secret` (*type:* `String.t`, *default:* `nil`) - OAuth2 client secret.
  *   `whitelistedAudiences` (*type:* `list(String.t)`, *default:* `nil`) - Whitelisted client IDs for audience check.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :enabled => boolean() | nil,
          :experimentPercent => integer() | nil,
          :provider => String.t() | nil,
          :secret => String.t() | nil,
          :whitelistedAudiences => list(String.t()) | nil
        }

  field(:clientId)
  field(:enabled)
  field(:experimentPercent)
  field(:provider)
  field(:secret)
  field(:whitelistedAudiences, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.IdpConfig do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdpConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.IdpConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
