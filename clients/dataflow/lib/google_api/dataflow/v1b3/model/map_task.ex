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

defmodule GoogleApi.Dataflow.V1b3.Model.MapTask do
  @moduledoc """
  MapTask consists of an ordered set of instructions, each of which describes one particular low-level operation for the worker to perform in order to accomplish the MapTask&#39;s WorkItem.  Each instruction must appear in the list before any instructions which depends on its output.

  ## Attributes

  - instructions (List[ParallelInstruction]): The instructions in the MapTask. Defaults to: `null`.
  - stageName (String): System-defined name of the stage containing this MapTask. Unique across the workflow. Defaults to: `null`.
  - systemName (String): System-defined name of this MapTask. Unique across the workflow. Defaults to: `null`.
  """

  defstruct [
    :"instructions",
    :"stageName",
    :"systemName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.MapTask do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"instructions", :list, GoogleApi.Dataflow.V1b3.Model.ParallelInstruction, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.MapTask do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

