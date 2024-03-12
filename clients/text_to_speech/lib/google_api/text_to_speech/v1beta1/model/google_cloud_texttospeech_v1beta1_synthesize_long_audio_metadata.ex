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

defmodule GoogleApi.TextToSpeech.V1beta1.Model.GoogleCloudTexttospeechV1beta1SynthesizeLongAudioMetadata do
  @moduledoc """
  Metadata for response returned by the `SynthesizeLongAudio` method.

  ## Attributes

  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Deprecated. Do not use.
  *   `progressPercentage` (*type:* `float()`, *default:* `nil`) - The progress of the most recent processing update in percentage, ie. 70.0%.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the request was received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastUpdateTime => DateTime.t() | nil,
          :progressPercentage => float() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:lastUpdateTime, as: DateTime)
  field(:progressPercentage)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.TextToSpeech.V1beta1.Model.GoogleCloudTexttospeechV1beta1SynthesizeLongAudioMetadata do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1beta1.Model.GoogleCloudTexttospeechV1beta1SynthesizeLongAudioMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.TextToSpeech.V1beta1.Model.GoogleCloudTexttospeechV1beta1SynthesizeLongAudioMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
