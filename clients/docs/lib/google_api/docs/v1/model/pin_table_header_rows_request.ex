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

defmodule GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest do
  @moduledoc """
  Updates the number of pinned table header rows in a table.

  ## Attributes

  *   `pinnedHeaderRowsCount` (*type:* `integer()`, *default:* `nil`) - The number of table rows to pin, where 0 implies that all rows are unpinned.
  *   `tableStartLocation` (*type:* `GoogleApi.Docs.V1.Model.Location.t`, *default:* `nil`) - The location where the table starts in the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pinnedHeaderRowsCount => integer() | nil,
          :tableStartLocation => GoogleApi.Docs.V1.Model.Location.t() | nil
        }

  field(:pinnedHeaderRowsCount)
  field(:tableStartLocation, as: GoogleApi.Docs.V1.Model.Location)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.PinTableHeaderRowsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end