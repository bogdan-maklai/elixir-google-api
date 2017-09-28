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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Product do
  @moduledoc """
  A Products resource represents an app in the Google Play store that is available to at least some users in the enterprise. (Some apps are restricted to a single enterprise, and no information about them is made available outside that enterprise.)  The information provided for each product (localized name, icon, link to the full Google Play details page) is intended to allow a basic representation of the product within an EMM user interface.

  ## Attributes

  - appVersion (List[AppVersion]): App versions currently available for this product. The returned list contains only public versions. Alpha and beta versions are not included. Defaults to: `null`.
  - authorName (String): The name of the author of the product (for example, the app developer). Defaults to: `null`.
  - detailsUrl (String): A link to the (consumer) Google Play details page for the product. Defaults to: `null`.
  - distributionChannel (String): How and to whom the package is made available. The value publicGoogleHosted means that the package is available through the Play store and not restricted to a specific enterprise. The value privateGoogleHosted means that the package is a private app (restricted to an enterprise) but hosted by Google. The value privateSelfHosted means that the package is a private app (restricted to an enterprise) and is privately hosted. Defaults to: `null`.
  - iconUrl (String): A link to an image that can be used as an icon for the product. This image is suitable for use at up to 512px x 512px. Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#product\&quot;. Defaults to: `null`.
  - productId (String): A string of the form app:&lt;package name&gt;. For example, app:com.google.android.gm represents the Gmail app. Defaults to: `null`.
  - productPricing (String): Whether this product is free, free with in-app purchases, or paid. If the pricing is unknown, this means the product is not generally available anymore (even though it might still be available to people who own it). Defaults to: `null`.
  - requiresContainerApp (Boolean): Deprecated. Defaults to: `null`.
  - smallIconUrl (String): A link to a smaller image that can be used as an icon for the product. This image is suitable for use at up to 128px x 128px. Defaults to: `null`.
  - title (String): The name of the product. Defaults to: `null`.
  - workDetailsUrl (String): A link to the managed Google Play details page for the product, for use by an Enterprise admin. Defaults to: `null`.
  """

  defstruct [
    :"appVersion",
    :"authorName",
    :"detailsUrl",
    :"distributionChannel",
    :"iconUrl",
    :"kind",
    :"productId",
    :"productPricing",
    :"requiresContainerApp",
    :"smallIconUrl",
    :"title",
    :"workDetailsUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Product do
  import GoogleApi.AndroidEnterprise.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"appVersion", :list, GoogleApi.AndroidEnterprise.V1.Model.AppVersion, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.Product do
  def encode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Deserializer.serialize_non_nil(value, options)
  end
end

