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

defmodule GoogleApi.CloudUserAccounts.Vm_alpha.Model.LogConfig do
  @moduledoc """
  Specifies what kind of log the caller must write

  ## Attributes

  - counter (LogConfigCounterOptions): Counter options. Defaults to: `null`.
  """

  defstruct [
    :"counter"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudUserAccounts.Vm_alpha.Model.LogConfig do
  import GoogleApi.CloudUserAccounts.Vm_alpha.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"counter", :struct, GoogleApi.CloudUserAccounts.Vm_alpha.Model.LogConfigCounterOptions, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudUserAccounts.Vm_alpha.Model.LogConfig do
  def encode(value, options) do
    GoogleApi.CloudUserAccounts.Vm_alpha.Deserializer.serialize_non_nil(value, options)
  end
end

