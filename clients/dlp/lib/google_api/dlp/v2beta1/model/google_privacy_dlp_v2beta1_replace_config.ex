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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1ReplaceConfig do
  @moduledoc """
  

  ## Attributes

  - infoType (GooglePrivacyDlpV2beta1InfoType): Type of information to replace. Only one ReplaceConfig per info_type should be provided. If ReplaceConfig does not have an info_type, the DLP API matches it against all info_types that are found but not specified in another ReplaceConfig. Defaults to: `null`.
  - replaceWith (String): Content replacing sensitive information of given type. Max 256 chars. Defaults to: `null`.
  """

  defstruct [
    :"infoType",
    :"replaceWith"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1ReplaceConfig do
  import GoogleApi.DLP.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"infoType", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1InfoType, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1ReplaceConfig do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

