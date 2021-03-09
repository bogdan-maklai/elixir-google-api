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

defmodule GoogleApi.CloudKMS.V1.Model.ListImportJobsResponse do
  @moduledoc """
  Response message for KeyManagementService.ListImportJobs.

  ## Attributes

  *   `importJobs` (*type:* `list(GoogleApi.CloudKMS.V1.Model.ImportJob.t)`, *default:* `nil`) - The list of ImportJobs.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve next page of results. Pass this value in ListImportJobsRequest.page_token to retrieve the next page of results.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of ImportJobs that matched the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :importJobs => list(GoogleApi.CloudKMS.V1.Model.ImportJob.t()) | nil,
          :nextPageToken => String.t() | nil,
          :totalSize => integer() | nil
        }

  field(:importJobs, as: GoogleApi.CloudKMS.V1.Model.ImportJob, type: :list)
  field(:nextPageToken)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.ListImportJobsResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.ListImportJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.ListImportJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
