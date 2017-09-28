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

defmodule GoogleApi.Dataflow.V1b3.Model.SourceSplitRequest do
  @moduledoc """
  Represents the operation to split a high-level Source specification into bundles (parts for parallel processing).  At a high level, splitting of a source into bundles happens as follows: SourceSplitRequest is applied to the source. If it returns SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further splitting happens and the source is used \&quot;as is\&quot;. Otherwise, splitting is applied recursively to each produced DerivedSource.  As an optimization, for any Source, if its does_not_need_splitting is true, the framework assumes that splitting this source would return SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn&#39;t initiate a SourceSplitRequest. This applies both to the initial source being split and to bundles produced from it.

  ## Attributes

  - options (SourceSplitOptions): Hints for tuning the splitting process. Defaults to: `null`.
  - source (Source): Specification of the source to be split. Defaults to: `null`.
  """

  defstruct [
    :"options",
    :"source"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SourceSplitRequest do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"options", :struct, GoogleApi.Dataflow.V1b3.Model.SourceSplitOptions, options)
    |> deserialize(:"source", :struct, GoogleApi.Dataflow.V1b3.Model.Source, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SourceSplitRequest do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

