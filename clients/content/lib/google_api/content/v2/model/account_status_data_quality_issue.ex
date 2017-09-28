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

defmodule GoogleApi.Content.V2.Model.AccountStatusDataQualityIssue do
  @moduledoc """
  

  ## Attributes

  - country (String): Country for which this issue is reported. Defaults to: `null`.
  - detail (String): A more detailed description of the issue. Defaults to: `null`.
  - displayedValue (String): Actual value displayed on the landing page. Defaults to: `null`.
  - exampleItems (List[AccountStatusExampleItem]): Example items featuring the issue. Defaults to: `null`.
  - id (String): Issue identifier. Defaults to: `null`.
  - lastChecked (String): Last time the account was checked for this issue. Defaults to: `null`.
  - location (String): The attribute name that is relevant for the issue. Defaults to: `null`.
  - numItems (Integer): Number of items in the account found to have the said issue. Defaults to: `null`.
  - severity (String): Severity of the problem. Defaults to: `null`.
  - submittedValue (String): Submitted value that causes the issue. Defaults to: `null`.
  """

  defstruct [
    :"country",
    :"detail",
    :"displayedValue",
    :"exampleItems",
    :"id",
    :"lastChecked",
    :"location",
    :"numItems",
    :"severity",
    :"submittedValue"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountStatusDataQualityIssue do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"exampleItems", :list, GoogleApi.Content.V2.Model.AccountStatusExampleItem, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountStatusDataQualityIssue do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

