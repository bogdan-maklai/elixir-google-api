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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Product do
  @moduledoc """
  A product is segment of inventory that a seller wishes to sell. It is associated with certain terms and targeting information which helps buyer know more about the inventory. Each field in a product can have one of the following setting:  (readonly) - It is an error to try and set this field. (buyer-readonly) - Only the seller can set this field. (seller-readonly) - Only the buyer can set this field. (updatable) - The field is updatable at all times by either buyer or the seller.

  ## Attributes

  - billedBuyer (Buyer): The billed buyer corresponding to the buyer that created the offer. (readonly, except on create) Defaults to: `null`.
  - buyer (Buyer): The buyer that created the offer if this is a buyer initiated offer (readonly, except on create) Defaults to: `null`.
  - creationTimeMs (String): Creation time in ms. since epoch (readonly) Defaults to: `null`.
  - creatorContacts (List[ContactInformation]): Optional contact information for the creator of this product. (buyer-readonly) Defaults to: `null`.
  - creatorRole (String): The role that created the offer. Set to BUYER for buyer initiated offers. Defaults to: `null`.
  - deliveryControl (DeliveryControl): The set of fields around delivery control that are interesting for a buyer to see but are non-negotiable. These are set by the publisher. This message is assigned an id of 100 since some day we would want to model this as a protobuf extension. Defaults to: `null`.
  - flightEndTimeMs (String): The proposed end time for the deal (ms since epoch) (buyer-readonly) Defaults to: `null`.
  - flightStartTimeMs (String): Inventory availability dates. (times are in ms since epoch) The granularity is generally in the order of seconds. (buyer-readonly) Defaults to: `null`.
  - hasCreatorSignedOff (Boolean): If the creator has already signed off on the product, then the buyer can finalize the deal by accepting the product as is. When copying to a proposal, if any of the terms are changed, then auto_finalize is automatically set to false. Defaults to: `null`.
  - inventorySource (String): What exchange will provide this inventory (readonly, except on create). Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;adexchangebuyer#product\&quot;. Defaults to: `null`.
  - labels (List[MarketplaceLabel]): Optional List of labels for the product (optional, buyer-readonly). Defaults to: `null`.
  - lastUpdateTimeMs (String): Time of last update in ms. since epoch (readonly) Defaults to: `null`.
  - legacyOfferId (String): Optional legacy offer id if this offer is a preferred deal offer. Defaults to: `null`.
  - marketplacePublisherProfileId (String): Marketplace publisher profile Id. This Id differs from the regular publisher_profile_id in that 1. This is a new id, the old Id will be deprecated in 2017. 2. This id uniquely identifies a publisher profile by itself. Defaults to: `null`.
  - name (String): The name for this product as set by the seller. (buyer-readonly) Defaults to: `null`.
  - privateAuctionId (String): Optional private auction id if this offer is a private auction offer. Defaults to: `null`.
  - productId (String): The unique id for the product (readonly) Defaults to: `null`.
  - publisherProfileId (String): Id of the publisher profile for a given seller. A (seller.account_id, publisher_profile_id) pair uniquely identifies a publisher profile. Buyers can call the PublisherProfiles::List endpoint to get a list of publisher profiles for a given seller. Defaults to: `null`.
  - publisherProvidedForecast (PublisherProvidedForecast): Publisher self-provided forecast information. Defaults to: `null`.
  - revisionNumber (String): The revision number of the product. (readonly) Defaults to: `null`.
  - seller (Seller): Information about the seller that created this product (readonly, except on create) Defaults to: `null`.
  - sharedTargetings (List[SharedTargeting]): Targeting that is shared between the buyer and the seller. Each targeting criteria has a specified key and for each key there is a list of inclusion value or exclusion values. (buyer-readonly) Defaults to: `null`.
  - state (String): The state of the product. (buyer-readonly) Defaults to: `null`.
  - syndicationProduct (String): The syndication product associated with the deal. (readonly, except on create) Defaults to: `null`.
  - terms (DealTerms): The negotiable terms of the deal (buyer-readonly) Defaults to: `null`.
  - webPropertyCode (String): The web property code for the seller. This field is meant to be copied over as is when creating deals. Defaults to: `null`.
  """

  defstruct [
    :"billedBuyer",
    :"buyer",
    :"creationTimeMs",
    :"creatorContacts",
    :"creatorRole",
    :"deliveryControl",
    :"flightEndTimeMs",
    :"flightStartTimeMs",
    :"hasCreatorSignedOff",
    :"inventorySource",
    :"kind",
    :"labels",
    :"lastUpdateTimeMs",
    :"legacyOfferId",
    :"marketplacePublisherProfileId",
    :"name",
    :"privateAuctionId",
    :"productId",
    :"publisherProfileId",
    :"publisherProvidedForecast",
    :"revisionNumber",
    :"seller",
    :"sharedTargetings",
    :"state",
    :"syndicationProduct",
    :"terms",
    :"webPropertyCode"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Product do
  import GoogleApi.AdExchangeBuyer.V14.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"billedBuyer", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Buyer, options)
    |> deserialize(:"buyer", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Buyer, options)
    |> deserialize(:"creatorContacts", :list, GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation, options)
    |> deserialize(:"deliveryControl", :struct, GoogleApi.AdExchangeBuyer.V14.Model.DeliveryControl, options)
    |> deserialize(:"labels", :list, GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceLabel, options)
    |> deserialize(:"publisherProvidedForecast", :struct, GoogleApi.AdExchangeBuyer.V14.Model.PublisherProvidedForecast, options)
    |> deserialize(:"seller", :struct, GoogleApi.AdExchangeBuyer.V14.Model.Seller, options)
    |> deserialize(:"sharedTargetings", :list, GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting, options)
    |> deserialize(:"terms", :struct, GoogleApi.AdExchangeBuyer.V14.Model.DealTerms, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Product do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Deserializer.serialize_non_nil(value, options)
  end
end

