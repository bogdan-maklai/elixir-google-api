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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination do
  @moduledoc """
  Export destination of the data.Only gcs path is allowed in output_uri.

  ## Attributes

  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - Required. The format of the gcs destination. Only "text/csv" and "application/json" are supported.
  *   `outputUri` (*type:* `String.t`, *default:* `nil`) - Required. The output uri of destination file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mimeType => String.t() | nil,
          :outputUri => String.t() | nil
        }

  field(:mimeType)
  field(:outputUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p2alpha1GcsDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
