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

defmodule GoogleApi.Classroom.V1.Model.ModifyCourseWorkAssigneesRequest do
  @moduledoc """
  Request to modify assignee mode and options of a coursework.

  ## Attributes

  *   `assigneeMode` (*type:* `String.t`, *default:* `nil`) - Mode of the coursework describing whether it will be assigned to all students or specified individual students.
  *   `modifyIndividualStudentsOptions` (*type:* `GoogleApi.Classroom.V1.Model.ModifyIndividualStudentsOptions.t`, *default:* `nil`) - Set which students are assigned or not assigned to the coursework. Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assigneeMode => String.t() | nil,
          :modifyIndividualStudentsOptions =>
            GoogleApi.Classroom.V1.Model.ModifyIndividualStudentsOptions.t() | nil
        }

  field(:assigneeMode)

  field(:modifyIndividualStudentsOptions,
    as: GoogleApi.Classroom.V1.Model.ModifyIndividualStudentsOptions
  )
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.ModifyCourseWorkAssigneesRequest do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.ModifyCourseWorkAssigneesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.ModifyCourseWorkAssigneesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
