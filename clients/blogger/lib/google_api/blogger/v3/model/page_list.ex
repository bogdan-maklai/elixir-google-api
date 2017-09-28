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

defmodule GoogleApi.Blogger.V3.Model.PageList do
  @moduledoc """
  

  ## Attributes

  - etag (String): Etag of the response. Defaults to: `null`.
  - items (List[Page]): The list of Pages for a Blog. Defaults to: `null`.
  - kind (String): The kind of this entity. Always blogger#pageList Defaults to: `null`.
  - nextPageToken (String): Pagination token to fetch the next page, if one exists. Defaults to: `null`.
  """

  defstruct [
    :"etag",
    :"items",
    :"kind",
    :"nextPageToken"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.PageList do
  import GoogleApi.Blogger.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"items", :list, GoogleApi.Blogger.V3.Model.Page, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.PageList do
  def encode(value, options) do
    GoogleApi.Blogger.V3.Deserializer.serialize_non_nil(value, options)
  end
end

