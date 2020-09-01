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

defmodule GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies do
  @moduledoc """
  Policies controlling personal usage on a company-owned device with a work profile.

  ## Attributes

  *   `accountTypesWithManagementDisabled` (*type:* `list(String.t)`, *default:* `nil`) - Account types that can't be managed by the user.
  *   `cameraDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether camera is disabled.
  *   `maxDaysWithWorkOff` (*type:* `integer()`, *default:* `nil`) - Controls how long the work profile can stay off.
  *   `personalApplications` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PersonalApplicationPolicy.t)`, *default:* `nil`) - Policy applied to applications in the personal profile.
  *   `personalPlayStoreMode` (*type:* `String.t`, *default:* `nil`) - Used together with personal_applications to control how apps in the personal profile are allowed or blocked.
  *   `screenCaptureDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether screen capture is disabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountTypesWithManagementDisabled => list(String.t()),
          :cameraDisabled => boolean(),
          :maxDaysWithWorkOff => integer(),
          :personalApplications =>
            list(GoogleApi.AndroidManagement.V1.Model.PersonalApplicationPolicy.t()),
          :personalPlayStoreMode => String.t(),
          :screenCaptureDisabled => boolean()
        }

  field(:accountTypesWithManagementDisabled, type: :list)
  field(:cameraDisabled)
  field(:maxDaysWithWorkOff)

  field(:personalApplications,
    as: GoogleApi.AndroidManagement.V1.Model.PersonalApplicationPolicy,
    type: :list
  )

  field(:personalPlayStoreMode)
  field(:screenCaptureDisabled)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
