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

defmodule GoogleApi.AndroidManagement.V1.Model.NetworkInfo do
  @moduledoc """
  Device network info.

  ## Attributes

  - imei (String): IMEI number of the GSM device, e.g. A1000031212. Defaults to: `null`.
  - meid (String): MEID number of the CDMA device, e.g. A00000292788E1. Defaults to: `null`.
  - wifiMacAddress (String): WiFi MAC address of the device, e.g. 7c:11:11:11:11:11. Defaults to: `null`.
  """

  defstruct [
    :"imei",
    :"meid",
    :"wifiMacAddress"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.NetworkInfo do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.NetworkInfo do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

