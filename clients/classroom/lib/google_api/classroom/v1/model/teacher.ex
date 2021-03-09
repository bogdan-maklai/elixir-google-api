# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Classroom.V1.Model.Teacher do
  @moduledoc """
  Teacher of a course.

  ## Attributes

  *   `courseId` (*type:* `String.t`, *default:* `nil`) - Identifier of the course. Read-only.
  *   `profile` (*type:* `GoogleApi.Classroom.V1.Model.UserProfile.t`, *default:* `nil`) - Global user information for the teacher. Read-only.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Identifier of the user. When specified as a parameter of a request, this identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `"me"`, indicating the requesting user
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :courseId => String.t() | nil,
          :profile => GoogleApi.Classroom.V1.Model.UserProfile.t() | nil,
          :userId => String.t() | nil
        }

  field(:courseId)
  field(:profile, as: GoogleApi.Classroom.V1.Model.UserProfile)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Teacher do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Teacher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Teacher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
