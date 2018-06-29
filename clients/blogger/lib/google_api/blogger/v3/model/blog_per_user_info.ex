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

defmodule GoogleApi.Blogger.V3.Model.BlogPerUserInfo do
  @moduledoc """


  ## Attributes

  - blogId (String.t): ID of the Blog resource Defaults to: `null`.
  - hasAdminAccess (boolean()): True if the user has Admin level access to the blog. Defaults to: `null`.
  - kind (String.t): The kind of this entity. Always blogger#blogPerUserInfo Defaults to: `null`.
  - photosAlbumKey (String.t): The Photo Album Key for the user when adding photos to the blog Defaults to: `null`.
  - role (String.t): Access permissions that the user has for the blog (ADMIN, AUTHOR, or READER). Defaults to: `null`.
  - userId (String.t): ID of the User Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blogId => any(),
          :hasAdminAccess => any(),
          :kind => any(),
          :photosAlbumKey => any(),
          :role => any(),
          :userId => any()
        }

  field(:blogId)
  field(:hasAdminAccess)
  field(:kind)
  field(:photosAlbumKey)
  field(:role)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.BlogPerUserInfo do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.BlogPerUserInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.BlogPerUserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
