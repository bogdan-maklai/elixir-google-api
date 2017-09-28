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

defmodule GoogleApi.Blogger.V3.Model.BlogUserInfo do
  @moduledoc """
  

  ## Attributes

  - blog (Blog): The Blog resource. Defaults to: `null`.
  - blog_user_info (BlogPerUserInfo): Information about a User for the Blog. Defaults to: `null`.
  - kind (String): The kind of this entity. Always blogger#blogUserInfo Defaults to: `null`.
  """

  defstruct [
    :"blog",
    :"blog_user_info",
    :"kind"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.BlogUserInfo do
  import GoogleApi.Blogger.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"blog", :struct, GoogleApi.Blogger.V3.Model.Blog, options)
    |> deserialize(:"blog_user_info", :struct, GoogleApi.Blogger.V3.Model.BlogPerUserInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.BlogUserInfo do
  def encode(value, options) do
    GoogleApi.Blogger.V3.Deserializer.serialize_non_nil(value, options)
  end
end

