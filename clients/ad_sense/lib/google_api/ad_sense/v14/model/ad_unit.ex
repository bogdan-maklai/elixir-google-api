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

defmodule GoogleApi.AdSense.V14.Model.AdUnit do
  @moduledoc """
  

  ## Attributes

  - code (String): Identity code of this ad unit, not necessarily unique across ad clients. Defaults to: `null`.
  - contentAdsSettings (AdUnitContentAdsSettings):  Defaults to: `null`.
  - customStyle (AdStyle): Custom style information specific to this ad unit. Defaults to: `null`.
  - feedAdsSettings (AdUnitFeedAdsSettings):  Defaults to: `null`.
  - id (String): Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. Defaults to: `null`.
  - kind (String): Kind of resource this is, in this case adsense#adUnit. Defaults to: `null`.
  - mobileContentAdsSettings (AdUnitMobileContentAdsSettings):  Defaults to: `null`.
  - name (String): Name of this ad unit. Defaults to: `null`.
  - savedStyleId (String): ID of the saved ad style which holds this ad unit&#39;s style information. Defaults to: `null`.
  - status (String): Status of this ad unit. Possible values are: NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.  ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.  INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days. Defaults to: `null`.
  """

  defstruct [
    :"code",
    :"contentAdsSettings",
    :"customStyle",
    :"feedAdsSettings",
    :"id",
    :"kind",
    :"mobileContentAdsSettings",
    :"name",
    :"savedStyleId",
    :"status"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.AdUnit do
  import GoogleApi.AdSense.V14.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"contentAdsSettings", :struct, GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettings, options)
    |> deserialize(:"customStyle", :struct, GoogleApi.AdSense.V14.Model.AdStyle, options)
    |> deserialize(:"feedAdsSettings", :struct, GoogleApi.AdSense.V14.Model.AdUnitFeedAdsSettings, options)
    |> deserialize(:"mobileContentAdsSettings", :struct, GoogleApi.AdSense.V14.Model.AdUnitMobileContentAdsSettings, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.AdUnit do
  def encode(value, options) do
    GoogleApi.AdSense.V14.Deserializer.serialize_non_nil(value, options)
  end
end

