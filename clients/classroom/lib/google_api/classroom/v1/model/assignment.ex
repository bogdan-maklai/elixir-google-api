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

defmodule GoogleApi.Classroom.V1.Model.Assignment do
  @moduledoc """
  Additional details for assignments.

  ## Attributes

  *   `studentWorkFolder` (*type:* `GoogleApi.Classroom.V1.Model.DriveFolder.t`, *default:* `nil`) - Drive folder where attachments from student submissions are placed. This is only populated for course teachers and administrators.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :studentWorkFolder => GoogleApi.Classroom.V1.Model.DriveFolder.t() | nil
        }

  field(:studentWorkFolder, as: GoogleApi.Classroom.V1.Model.DriveFolder)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Assignment do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Assignment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Assignment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
