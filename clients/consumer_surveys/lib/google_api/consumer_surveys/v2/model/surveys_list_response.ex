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

defmodule GoogleApi.ConsumerSurveys.V2.Model.SurveysListResponse do
  @moduledoc """
  

  ## Attributes

  - pageInfo (PageInfo):  Defaults to: `null`.
  - requestId (String): Unique request ID used for logging and debugging. Please include in any error reporting or troubleshooting requests. Defaults to: `null`.
  - resources (List[Survey]): An individual survey resource. Defaults to: `null`.
  - tokenPagination (TokenPagination):  Defaults to: `null`.
  """

  defstruct [
    :"pageInfo",
    :"requestId",
    :"resources",
    :"tokenPagination"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ConsumerSurveys.V2.Model.SurveysListResponse do
  import GoogleApi.ConsumerSurveys.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"pageInfo", :struct, GoogleApi.ConsumerSurveys.V2.Model.PageInfo, options)
    |> deserialize(:"resources", :list, GoogleApi.ConsumerSurveys.V2.Model.Survey, options)
    |> deserialize(:"tokenPagination", :struct, GoogleApi.ConsumerSurveys.V2.Model.TokenPagination, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ConsumerSurveys.V2.Model.SurveysListResponse do
  def encode(value, options) do
    GoogleApi.ConsumerSurveys.V2.Deserializer.serialize_non_nil(value, options)
  end
end

