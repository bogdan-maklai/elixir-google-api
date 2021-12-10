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

defmodule GoogleApi.ChromePolicy.V1.Model.Proto2FieldDescriptorProto do
  @moduledoc """
  Describes a field within a message.

  ## Attributes

  *   `defaultValue` (*type:* `String.t`, *default:* `nil`) - For numeric types, contains the original text representation of the value. For booleans, "true" or "false". For strings, contains the default text contents (not escaped in any way). For bytes, contains the C escaped value. All bytes >= 128 are escaped.
  *   `jsonName` (*type:* `String.t`, *default:* `nil`) - JSON name of this field. The value is set by protocol compiler. If the user has set a "json_name" option on this field, that option's value will be used. Otherwise, it's deduced from the field's name by converting it to camelCase.
  *   `label` (*type:* `String.t`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `number` (*type:* `integer()`, *default:* `nil`) - 
  *   `oneofIndex` (*type:* `integer()`, *default:* `nil`) - If set, gives the index of a oneof in the containing type's oneof_decl list. This field is a member of that oneof.
  *   `proto3Optional` (*type:* `boolean()`, *default:* `nil`) - If true, this is a proto3 "optional". When a proto3 field is optional, it tracks presence regardless of field type. When proto3_optional is true, this field must be belong to a oneof to signal to old proto3 clients that presence is tracked for this field. This oneof is known as a "synthetic" oneof, and this field must be its sole member (each proto3 optional field gets its own synthetic oneof). Synthetic oneofs exist in the descriptor only, and do not generate any API. Synthetic oneofs must be ordered after all "real" oneofs. For message fields, proto3_optional doesn't create any semantic change, since non-repeated message fields always track presence. However it still indicates the semantic detail of whether the user wrote "optional" or not. This can be useful for round-tripping the .proto file. For consistency we give message fields a synthetic oneof also, even though it is not required to track presence. This is especially important because the parser can't tell if a field is a message or an enum, so it must always create a synthetic oneof. Proto2 optional fields do not set this flag, because they already indicate optional with `LABEL_OPTIONAL`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - If type_name is set, this need not be set. If both this and type_name are set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.
  *   `typeName` (*type:* `String.t`, *default:* `nil`) - For message and enum types, this is the name of the type. If the name starts with a '.', it is fully-qualified. Otherwise, C++-like scoping rules are used to find the type (i.e. first the nested types within this message are searched, then within the parent, on up to the root namespace).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultValue => String.t() | nil,
          :jsonName => String.t() | nil,
          :label => String.t() | nil,
          :name => String.t() | nil,
          :number => integer() | nil,
          :oneofIndex => integer() | nil,
          :proto3Optional => boolean() | nil,
          :type => String.t() | nil,
          :typeName => String.t() | nil
        }

  field(:defaultValue)
  field(:jsonName)
  field(:label)
  field(:name)
  field(:number)
  field(:oneofIndex)
  field(:proto3Optional)
  field(:type)
  field(:typeName)
end

defimpl Poison.Decoder, for: GoogleApi.ChromePolicy.V1.Model.Proto2FieldDescriptorProto do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.Proto2FieldDescriptorProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromePolicy.V1.Model.Proto2FieldDescriptorProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end