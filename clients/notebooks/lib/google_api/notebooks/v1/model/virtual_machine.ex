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

defmodule GoogleApi.Notebooks.V1.Model.VirtualMachine do
  @moduledoc """
  Runtime using Virtual Machine for computing.

  ## Attributes

  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of the Managed Compute Engine instance.
  *   `instanceName` (*type:* `String.t`, *default:* `nil`) - Output only. The user-friendly name of the Managed Compute Engine instance.
  *   `virtualMachineConfig` (*type:* `GoogleApi.Notebooks.V1.Model.VirtualMachineConfig.t`, *default:* `nil`) - Virtual Machine configuration settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceId => String.t() | nil,
          :instanceName => String.t() | nil,
          :virtualMachineConfig => GoogleApi.Notebooks.V1.Model.VirtualMachineConfig.t() | nil
        }

  field(:instanceId)
  field(:instanceName)
  field(:virtualMachineConfig, as: GoogleApi.Notebooks.V1.Model.VirtualMachineConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.VirtualMachine do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.VirtualMachine.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.VirtualMachine do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
