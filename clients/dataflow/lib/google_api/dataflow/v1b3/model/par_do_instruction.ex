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

defmodule GoogleApi.Dataflow.V1b3.Model.ParDoInstruction do
  @moduledoc """
  An instruction that does a ParDo operation. Takes one main input and zero or more side inputs, and produces zero or more outputs. Runs user code.

  ## Attributes

  - input (InstructionInput): The input. Defaults to: `null`.
  - multiOutputInfos (List[MultiOutputInfo]): Information about each of the outputs, if user_fn is a  MultiDoFn. Defaults to: `null`.
  - numOutputs (Integer): The number of outputs. Defaults to: `null`.
  - sideInputs (List[SideInputInfo]): Zero or more side inputs. Defaults to: `null`.
  - userFn (Object): The user function to invoke. Defaults to: `null`.
  """

  defstruct [
    :"input",
    :"multiOutputInfos",
    :"numOutputs",
    :"sideInputs",
    :"userFn"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ParDoInstruction do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"input", :struct, GoogleApi.Dataflow.V1b3.Model.InstructionInput, options)
    |> deserialize(:"multiOutputInfos", :list, GoogleApi.Dataflow.V1b3.Model.MultiOutputInfo, options)
    |> deserialize(:"sideInputs", :list, GoogleApi.Dataflow.V1b3.Model.SideInputInfo, options)
    |> deserialize(:"userFn", :struct, GoogleApi.Dataflow.V1b3.Model.Object, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ParDoInstruction do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

