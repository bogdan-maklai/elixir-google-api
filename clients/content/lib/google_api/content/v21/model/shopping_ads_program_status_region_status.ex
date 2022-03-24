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

defmodule GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusRegionStatus do
  @moduledoc """
  Status of program and region.

  ## Attributes

  *   `disapprovalDate` (*type:* `String.t`, *default:* `nil`) - Date your `eligibilityStatus` will become `DISAPPROVED`. Only visible when your `eligibilityStatus` is `WARNING`. In [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.
  *   `eligibilityStatus` (*type:* `String.t`, *default:* `nil`) - Eligibility status of the Shopping Ads program.
  *   `onboardingIssues` (*type:* `list(String.t)`, *default:* `nil`) - Must be fixed to be eligible for review.
  *   `regionCodes` (*type:* `list(String.t)`, *default:* `nil`) - The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all the regions with the same `eligibilityStatus` and `reviewEligibility`.
  *   `reviewEligibilityStatus` (*type:* `String.t`, *default:* `nil`) - If a program is eligible for review in a specific region. Only visible if `eligibilityStatus` is `DISAPPROVED`.
  *   `reviewIneligibilityReason` (*type:* `String.t`, *default:* `nil`) - Review ineligibility reason if account is not eligible for review.
  *   `reviewIneligibilityReasonDescription` (*type:* `String.t`, *default:* `nil`) - Reason a program in a specific region isn’t eligible for review. Only visible if `reviewEligibilityStatus` is `INELIGIBLE`.
  *   `reviewIneligibilityReasonDetails` (*type:* `GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails.t`, *default:* `nil`) - Additional information for ineligibility. If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`, a timestamp for the end of the cooldown period is provided.
  *   `reviewIssues` (*type:* `list(String.t)`, *default:* `nil`) - Issues evaluated in the review process. Fix all issues before requesting a review.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disapprovalDate => String.t() | nil,
          :eligibilityStatus => String.t() | nil,
          :onboardingIssues => list(String.t()) | nil,
          :regionCodes => list(String.t()) | nil,
          :reviewEligibilityStatus => String.t() | nil,
          :reviewIneligibilityReason => String.t() | nil,
          :reviewIneligibilityReasonDescription => String.t() | nil,
          :reviewIneligibilityReasonDetails =>
            GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails.t()
            | nil,
          :reviewIssues => list(String.t()) | nil
        }

  field(:disapprovalDate)
  field(:eligibilityStatus)
  field(:onboardingIssues, type: :list)
  field(:regionCodes, type: :list)
  field(:reviewEligibilityStatus)
  field(:reviewIneligibilityReason)
  field(:reviewIneligibilityReasonDescription)

  field(:reviewIneligibilityReasonDetails,
    as: GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
  )

  field(:reviewIssues, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusRegionStatus do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusRegionStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ShoppingAdsProgramStatusRegionStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
