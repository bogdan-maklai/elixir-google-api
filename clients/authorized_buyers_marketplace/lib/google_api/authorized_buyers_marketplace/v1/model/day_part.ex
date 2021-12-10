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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart do
  @moduledoc """
  Defines targeting for a period of time on a specific week day.

  ## Attributes

  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - Day of week for the period.
  *   `endTime` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay.t`, *default:* `nil`) - Hours in 24 hour time between 0 and 24, inclusive. Note: 24 is logically equivalent to 0, but is supported since in some cases there may need to be differentiation made between midnight on one day and midnight on the next day. Accepted values for minutes are [0, 15, 30, 45]. 0 is the only acceptable minute value for hour 24. Seconds and nanos are ignored.
  *   `startTime` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay.t`, *default:* `nil`) - Hours in 24 hour time between 0 and 24, inclusive. Note: 24 is logically equivalent to 0, but is supported since in some cases there may need to be differentiation made between midnight on one day and midnight on the next day. Accepted values for minutes are [0, 15, 30, 45]. 0 is the only acceptable minute value for hour 24. Seconds and nanos are ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayOfWeek => String.t() | nil,
          :endTime => GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay.t() | nil,
          :startTime => GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay.t() | nil
        }

  field(:dayOfWeek)
  field(:endTime, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay)
  field(:startTime, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPart do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end