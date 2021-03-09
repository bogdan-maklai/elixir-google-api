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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThread do
  @moduledoc """
  A feedback thread of a certain labeling task on a certain annotated dataset.

  ## Attributes

  *   `feedbackThreadMetadata` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata.t`, *default:* `nil`) - Metadata regarding the feedback thread.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}'
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :feedbackThreadMetadata =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata.t()
            | nil,
          :name => String.t() | nil
        }

  field(:feedbackThreadMetadata,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata
  )

  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThread do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThread.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1FeedbackThread do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
