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

defmodule GoogleApi.Container.V1.Model.SetLoggingServiceRequest do
  @moduledoc """
  SetLoggingServiceRequest sets the logging service of a cluster.

  ## Attributes

  - loggingService (String): The logging service the cluster should use to write metrics. Currently available options:  * \&quot;logging.googleapis.com\&quot; - the Google Cloud Logging service * \&quot;none\&quot; - no metrics will be exported from the cluster Defaults to: `null`.
  """

  defstruct [
    :"loggingService"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SetLoggingServiceRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SetLoggingServiceRequest do
  def encode(value, options) do
    GoogleApi.Container.V1.Deserializer.serialize_non_nil(value, options)
  end
end

