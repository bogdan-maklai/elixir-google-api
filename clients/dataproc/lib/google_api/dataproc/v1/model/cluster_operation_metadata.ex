# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  @moduledoc """
  Metadata describing the operation.

  ## Attributes

  - clusterName (String): Output-only. Name of the cluster for the operation. Defaults to: `null`.
  - clusterUuid (String): Output-only. Cluster UUID for the operation. Defaults to: `null`.
  - description (String): Output-only. Short description of operation. Defaults to: `null`.
  - labels (Map[String, String]): Output-only. Labels associated with the operation Defaults to: `null`.
  - operationType (String): Output-only. The operation type. Defaults to: `null`.
  - status (ClusterOperationStatus): Output-only. Current operation status. Defaults to: `null`.
  - statusHistory (List[ClusterOperationStatus]): Output-only. The previous operation status. Defaults to: `null`.
  - warnings (List[String]): Output-only. Errors encountered during operation execution. Defaults to: `null`.
  """

  defstruct [
    :"clusterName",
    :"clusterUuid",
    :"description",
    :"labels",
    :"operationType",
    :"status",
    :"statusHistory",
    :"warnings"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  import GoogleApi.Dataproc.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, GoogleApi.Dataproc.V1.Model.ClusterOperationStatus, options)
    |> deserialize(:"statusHistory", :list, GoogleApi.Dataproc.V1.Model.ClusterOperationStatus, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  def encode(value, options) do
    GoogleApi.Dataproc.V1.Deserializer.serialize_non_nil(value, options)
  end
end

