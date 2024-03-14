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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1Tag do
  @moduledoc """
  Tags contain custom metadata and are attached to Data Catalog resources. Tags conform with the specification of their tag template. See [Data Catalog IAM](https://cloud.google.com/data-catalog/docs/concepts/iam) for information on the permissions needed to create or view tags.

  ## Attributes

  *   `column` (*type:* `String.t`, *default:* `nil`) - Resources like entry can have schemas associated with them. This scope allows you to attach tags to an individual column based on that schema. To attach a tag to a nested column, separate column names with a dot (`.`). Example: `column.nested_column`.
  *   `fields` (*type:* `%{optional(String.t) => GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1TagField.t}`, *default:* `nil`) - Required. Maps the ID of a tag field to its value and additional information about that field. Tag template defines valid field IDs. A tag must have at least 1 field and at most 500 fields.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the tag in URL format where tag ID is a system-generated identifier. Note: The tag itself might not be stored in the location specified in its name.
  *   `template` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the tag template this tag uses. Example: `projects/{PROJECT_ID}/locations/{LOCATION}/tagTemplates/{TAG_TEMPLATE_ID}` This field cannot be modified after creation.
  *   `templateDisplayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the tag template.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :column => String.t() | nil,
          :fields =>
            %{
              optional(String.t()) =>
                GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1TagField.t()
            }
            | nil,
          :name => String.t() | nil,
          :template => String.t() | nil,
          :templateDisplayName => String.t() | nil
        }

  field(:column)

  field(:fields,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1TagField,
    type: :map
  )

  field(:name)
  field(:template)
  field(:templateDisplayName)
end

defimpl Poison.Decoder, for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1Tag do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1Tag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1Tag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
