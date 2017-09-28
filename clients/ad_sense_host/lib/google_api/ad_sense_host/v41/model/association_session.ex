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

defmodule GoogleApi.AdSenseHost.V41.Model.AssociationSession do
  @moduledoc """
  

  ## Attributes

  - accountId (String): Hosted account id of the associated publisher after association. Present if status is ACCEPTED. Defaults to: `null`.
  - id (String): Unique identifier of this association session. Defaults to: `null`.
  - kind (String): Kind of resource this is, in this case adsensehost#associationSession. Defaults to: `null`.
  - productCodes (List[String]): The products to associate with the user. Options: AFC, AFG, AFV, AFS (deprecated), AFMC (deprecated) Defaults to: `null`.
  - redirectUrl (String): Redirect URL of this association session. Used to redirect users into the AdSense association flow. Defaults to: `null`.
  - status (String): Status of the completed association, available once the association callback token has been verified. One of ACCEPTED, REJECTED, or ERROR. Defaults to: `null`.
  - userLocale (String): The preferred locale of the user themselves when going through the AdSense association flow. Defaults to: `null`.
  - websiteLocale (String): The locale of the user&#39;s hosted website. Defaults to: `null`.
  - websiteUrl (String): The URL of the user&#39;s hosted website. Defaults to: `null`.
  """

  defstruct [
    :"accountId",
    :"id",
    :"kind",
    :"productCodes",
    :"redirectUrl",
    :"status",
    :"userLocale",
    :"websiteLocale",
    :"websiteUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.AssociationSession do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.AssociationSession do
  def encode(value, options) do
    GoogleApi.AdSenseHost.V41.Deserializer.serialize_non_nil(value, options)
  end
end

