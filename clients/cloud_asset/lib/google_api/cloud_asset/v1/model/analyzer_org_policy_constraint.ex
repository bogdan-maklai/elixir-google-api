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

defmodule GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicyConstraint do
  @moduledoc """
  The organization policy constraint definition.

  ## Attributes

  *   `customConstraint` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint.t`, *default:* `nil`) - The definition of the custom constraint.
  *   `googleDefinedConstraint` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint.t`, *default:* `nil`) - The definition of the canned constraint defined by Google.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customConstraint =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint.t() | nil,
          :googleDefinedConstraint =>
            GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint.t() | nil
        }

  field(:customConstraint, as: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint)
  field(:googleDefinedConstraint, as: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1Constraint)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicyConstraint do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicyConstraint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicyConstraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
