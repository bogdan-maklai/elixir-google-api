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

defmodule GoogleApi.TextToSpeech.V1.Model.SynthesizeLongAudioRequest do
  @moduledoc """
  The top-level message sent by the client for the `SynthesizeLongAudio` method.

  ## Attributes

  *   `audioConfig` (*type:* `GoogleApi.TextToSpeech.V1.Model.AudioConfig.t`, *default:* `nil`) - Required. The configuration of the synthesized audio.
  *   `input` (*type:* `GoogleApi.TextToSpeech.V1.Model.SynthesisInput.t`, *default:* `nil`) - Required. The Synthesizer requires either plain text or SSML as input. While Long Audio is in preview, SSML is temporarily unsupported.
  *   `outputGcsUri` (*type:* `String.t`, *default:* `nil`) - Required. Specifies a Cloud Storage URI for the synthesis results. Must be specified in the format: `gs://bucket_name/object_name`, and the bucket must already exist.
  *   `voice` (*type:* `GoogleApi.TextToSpeech.V1.Model.VoiceSelectionParams.t`, *default:* `nil`) - Required. The desired voice of the synthesized audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioConfig => GoogleApi.TextToSpeech.V1.Model.AudioConfig.t() | nil,
          :input => GoogleApi.TextToSpeech.V1.Model.SynthesisInput.t() | nil,
          :outputGcsUri => String.t() | nil,
          :voice => GoogleApi.TextToSpeech.V1.Model.VoiceSelectionParams.t() | nil
        }

  field(:audioConfig, as: GoogleApi.TextToSpeech.V1.Model.AudioConfig)
  field(:input, as: GoogleApi.TextToSpeech.V1.Model.SynthesisInput)
  field(:outputGcsUri)
  field(:voice, as: GoogleApi.TextToSpeech.V1.Model.VoiceSelectionParams)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1.Model.SynthesizeLongAudioRequest do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1.Model.SynthesizeLongAudioRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1.Model.SynthesizeLongAudioRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
