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

defmodule GoogleApi.AndroidManagement.V1.Model.UserFacingMessage do
  @moduledoc """
  Provides user facing message with locale info. The maximum message length is 4096 characters.

  ## Attributes

  - defaultMessage (String): The default message that gets displayed if no localized message is specified, or the user&#39;s locale does not match with any of the localized messages. A default message must be provided if any localized messages are provided. Defaults to: `null`.
  - localizedMessages (Map[String, String]): A map which contains &lt;locale, message&gt; pairs. The locale is a BCP 47 language code, e.g. en-US, es-ES, fr. Defaults to: `null`.
  """

  defstruct [
    :"defaultMessage",
    :"localizedMessages"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

