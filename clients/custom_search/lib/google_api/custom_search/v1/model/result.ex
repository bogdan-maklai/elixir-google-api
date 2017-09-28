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

defmodule GoogleApi.CustomSearch.V1.Model.Result do
  @moduledoc """
  

  ## Attributes

  - cacheId (String):  Defaults to: `null`.
  - displayLink (String):  Defaults to: `null`.
  - fileFormat (String):  Defaults to: `null`.
  - formattedUrl (String):  Defaults to: `null`.
  - htmlFormattedUrl (String):  Defaults to: `null`.
  - htmlSnippet (String):  Defaults to: `null`.
  - htmlTitle (String):  Defaults to: `null`.
  - image (ResultImage):  Defaults to: `null`.
  - kind (String):  Defaults to: `null`.
  - labels (List[ResultLabels]):  Defaults to: `null`.
  - link (String):  Defaults to: `null`.
  - mime (String):  Defaults to: `null`.
  - pagemap (Map[String, List[Object]]):  Defaults to: `null`.
  - snippet (String):  Defaults to: `null`.
  - title (String):  Defaults to: `null`.
  """

  defstruct [
    :"cacheId",
    :"displayLink",
    :"fileFormat",
    :"formattedUrl",
    :"htmlFormattedUrl",
    :"htmlSnippet",
    :"htmlTitle",
    :"image",
    :"kind",
    :"labels",
    :"link",
    :"mime",
    :"pagemap",
    :"snippet",
    :"title"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.Result do
  import GoogleApi.CustomSearch.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"image", :struct, GoogleApi.CustomSearch.V1.Model.ResultImage, options)
    |> deserialize(:"labels", :list, GoogleApi.CustomSearch.V1.Model.ResultLabels, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.Result do
  def encode(value, options) do
    GoogleApi.CustomSearch.V1.Deserializer.serialize_non_nil(value, options)
  end
end

