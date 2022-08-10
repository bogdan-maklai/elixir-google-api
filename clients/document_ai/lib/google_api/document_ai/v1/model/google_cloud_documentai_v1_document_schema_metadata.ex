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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaMetadata do
  @moduledoc """
  Metadata for global schema behavior.

  ## Attributes

  *   `documentAllowMultipleLabels` (*type:* `boolean()`, *default:* `nil`) - If true, on a given page, there can be multiple `document` annotations covering it.
  *   `documentSplitter` (*type:* `boolean()`, *default:* `nil`) - If true, a `document` entity type can be applied to subdocument ( splitting). Otherwise, it can only be applied to the entire document (classification).
  *   `prefixedNamingOnProperties` (*type:* `boolean()`, *default:* `nil`) - If set, all the nested entities must be prefixed with the parents.
  *   `skipNamingValidation` (*type:* `boolean()`, *default:* `nil`) - If set, we will skip the naming format validation in the schema. So the string values in `DocumentSchema.EntityType.name` and `DocumentSchema.EntityType.Property.name` will not be checked.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentAllowMultipleLabels => boolean() | nil,
          :documentSplitter => boolean() | nil,
          :prefixedNamingOnProperties => boolean() | nil,
          :skipNamingValidation => boolean() | nil
        }

  field(:documentAllowMultipleLabels)
  field(:documentSplitter)
  field(:prefixedNamingOnProperties)
  field(:skipNamingValidation)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaMetadata do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
