# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdSenseHost.V41.Model.AdStyleColors do
  @moduledoc """
  The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.

  ## Attributes

  - background (String): The color of the ad background. Defaults to: `null`.
  - border (String): The color of the ad border. Defaults to: `null`.
  - text (String): The color of the ad text. Defaults to: `null`.
  - title (String): The color of the ad title. Defaults to: `null`.
  - url (String): The color of the ad url. Defaults to: `null`.
  """

  defstruct [
    :"background",
    :"border",
    :"text",
    :"title",
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.AdStyleColors do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.AdStyleColors do
  def encode(value, options) do
    GoogleApi.AdSenseHost.V41.Deserializer.serialize_non_nil(value, options)
  end
end

