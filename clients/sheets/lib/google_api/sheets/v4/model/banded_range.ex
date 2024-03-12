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

defmodule GoogleApi.Sheets.V4.Model.BandedRange do
  @moduledoc """
  A banded (alternating colors) range in a sheet.

  ## Attributes

  *   `bandedRangeId` (*type:* `integer()`, *default:* `nil`) - The ID of the banded range.
  *   `columnProperties` (*type:* `GoogleApi.Sheets.V4.Model.BandingProperties.t`, *default:* `nil`) - Properties for column bands. These properties are applied on a column- by-column basis throughout all the columns in the range. At least one of row_properties or column_properties must be specified.
  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The range over which these properties are applied.
  *   `rowProperties` (*type:* `GoogleApi.Sheets.V4.Model.BandingProperties.t`, *default:* `nil`) - Properties for row bands. These properties are applied on a row-by-row basis throughout all the rows in the range. At least one of row_properties or column_properties must be specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bandedRangeId => integer() | nil,
          :columnProperties => GoogleApi.Sheets.V4.Model.BandingProperties.t() | nil,
          :range => GoogleApi.Sheets.V4.Model.GridRange.t() | nil,
          :rowProperties => GoogleApi.Sheets.V4.Model.BandingProperties.t() | nil
        }

  field(:bandedRangeId)
  field(:columnProperties, as: GoogleApi.Sheets.V4.Model.BandingProperties)
  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:rowProperties, as: GoogleApi.Sheets.V4.Model.BandingProperties)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BandedRange do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BandedRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BandedRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
