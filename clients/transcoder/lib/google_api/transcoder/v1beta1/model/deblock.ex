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

defmodule GoogleApi.Transcoder.V1beta1.Model.Deblock do
  @moduledoc """
  Deblock preprocessing configuration.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Enable deblocker. The default is `false`.
  *   `strength` (*type:* `float()`, *default:* `nil`) - Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger the block removal. 0 is no deblocking. The default is 0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :strength => float() | nil
        }

  field(:enabled)
  field(:strength)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1beta1.Model.Deblock do
  def decode(value, options) do
    GoogleApi.Transcoder.V1beta1.Model.Deblock.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1beta1.Model.Deblock do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end