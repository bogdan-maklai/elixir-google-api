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

defmodule GoogleApi.Classroom.V1.Model.Guardian do
  @moduledoc """
  Association between a student and a guardian of that student. The guardian may receive information about the student&#39;s course work.

  ## Attributes

  - guardianId (String): Identifier for the guardian. Defaults to: `null`.
  - guardianProfile (UserProfile): User profile for the guardian. Defaults to: `null`.
  - invitedEmailAddress (String): The email address to which the initial guardian invitation was sent. This field is only visible to domain administrators. Defaults to: `null`.
  - studentId (String): Identifier for the student to whom the guardian relationship applies. Defaults to: `null`.
  """

  defstruct [
    :"guardianId",
    :"guardianProfile",
    :"invitedEmailAddress",
    :"studentId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Guardian do
  import GoogleApi.Classroom.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"guardianProfile", :struct, GoogleApi.Classroom.V1.Model.UserProfile, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Guardian do
  def encode(value, options) do
    GoogleApi.Classroom.V1.Deserializer.serialize_non_nil(value, options)
  end
end

