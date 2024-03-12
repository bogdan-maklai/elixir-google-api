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

defmodule GoogleApi.Metastore.V1beta.Model.LatestBackup do
  @moduledoc """
  The details of the latest scheduled backup.

  ## Attributes

  *   `backupId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of an in-progress scheduled backup. Empty if no backup is in progress.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. The duration of the backup completion.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the backup was started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the backup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupId => String.t() | nil,
          :duration => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil
        }

  field(:backupId)
  field(:duration)
  field(:startTime, as: DateTime)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.LatestBackup do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.LatestBackup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.LatestBackup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
