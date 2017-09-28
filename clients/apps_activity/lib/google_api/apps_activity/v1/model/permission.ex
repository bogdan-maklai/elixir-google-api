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

defmodule GoogleApi.AppsActivity.V1.Model.Permission do
  @moduledoc """
  Contains information about the permissions and type of access allowed with regards to a Google Drive object. This is a subset of the fields contained in a corresponding Drive Permissions object.

  ## Attributes

  - name (String): The name of the user or group the permission applies to. Defaults to: `null`.
  - permissionId (String): The ID for this permission. Corresponds to the Drive API&#39;s permission ID returned as part of the Drive Permissions resource. Defaults to: `null`.
  - role (String): Indicates the Google Drive permissions role. The role determines a user&#39;s ability to read, write, or comment on the file. Defaults to: `null`.
    - Enum - one of [commenter, owner, reader, writer]
  - type (String): Indicates how widely permissions are granted. Defaults to: `null`.
    - Enum - one of [anyone, domain, group, user]
  - user (User): The user&#39;s information if the type is USER. Defaults to: `null`.
  - withLink (Boolean): Whether the permission requires a link to the file. Defaults to: `null`.
  """

  defstruct [
    :"name",
    :"permissionId",
    :"role",
    :"type",
    :"user",
    :"withLink"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppsActivity.V1.Model.Permission do
  import GoogleApi.AppsActivity.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"user", :struct, GoogleApi.AppsActivity.V1.Model.User, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppsActivity.V1.Model.Permission do
  def encode(value, options) do
    GoogleApi.AppsActivity.V1.Deserializer.serialize_non_nil(value, options)
  end
end

