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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics do
  @moduledoc """
  The evaluation metrics for smart reply model.

  ## Attributes

  *   `allowlistCoverage` (*type:* `number()`, *default:* `nil`) - Percentage of target participant messages in the evaluation dataset for which similar messages have appeared at least once in the allowlist. Should be [0, 1].
  *   `conversationCount` (*type:* `String.t`, *default:* `nil`) - Total number of conversations used to generate this metric.
  *   `topNMetrics` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics.t)`, *default:* `nil`) - Metrics of top n smart replies, sorted by TopNMetric.n.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowlistCoverage => number() | nil,
          :conversationCount => String.t() | nil,
          :topNMetrics =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics.t()
            )
            | nil
        }

  field(:allowlistCoverage)
  field(:conversationCount)

  field(:topNMetrics,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end