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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySendVerificationCodeRequest do
  @moduledoc """
  Request for Identitytoolkit-SendVerificationCode

  ## Attributes

  *   `iosReceipt` (*type:* `String.t`, *default:* `nil`) - Receipt of successful app token validation with APNS.
  *   `iosSecret` (*type:* `String.t`, *default:* `nil`) - Secret delivered to iOS app via APNS.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - The phone number to send the verification code to in E.164 format.
  *   `recaptchaToken` (*type:* `String.t`, *default:* `nil`) - Recaptcha solution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iosReceipt => String.t() | nil,
          :iosSecret => String.t() | nil,
          :phoneNumber => String.t() | nil,
          :recaptchaToken => String.t() | nil
        }

  field(:iosReceipt)
  field(:iosSecret)
  field(:phoneNumber)
  field(:recaptchaToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySendVerificationCodeRequest do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySendVerificationCodeRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySendVerificationCodeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
