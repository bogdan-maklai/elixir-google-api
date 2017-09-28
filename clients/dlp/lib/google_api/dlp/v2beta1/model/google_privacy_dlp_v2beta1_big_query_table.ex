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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1BigQueryTable do
  @moduledoc """
  Message defining the location of a BigQuery table. A table is uniquely identified  by its project_id, dataset_id, and table_name. Within a query a table is often referenced with a string in the format of: &#x60;&lt;project_id&gt;:&lt;dataset_id&gt;.&lt;table_id&gt;&#x60; or &#x60;&lt;project_id&gt;.&lt;dataset_id&gt;.&lt;table_id&gt;&#x60;.

  ## Attributes

  - datasetId (String): Dataset ID of the table. Defaults to: `null`.
  - projectId (String): The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call. Defaults to: `null`.
  - tableId (String): Name of the table. Defaults to: `null`.
  """

  defstruct [
    :"datasetId",
    :"projectId",
    :"tableId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1BigQueryTable do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1BigQueryTable do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

