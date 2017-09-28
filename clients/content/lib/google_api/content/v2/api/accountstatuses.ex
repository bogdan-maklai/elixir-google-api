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

defmodule GoogleApi.Content.V2.Api.Accountstatuses do
  @moduledoc """
  API calls for all endpoints tagged `Accountstatuses`.
  """

  alias GoogleApi.Content.V2.Connection
  import GoogleApi.Content.V2.RequestBuilder


  @doc """

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (AccountstatusesCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accountstatuses_custombatch(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponse.t} | {:error, Tesla.Env.t}
  def content_accountstatuses_custombatch(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/accountstatuses/batch")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponse{})
  end

  @doc """
  Retrieves the status of a Merchant Center account. This method can only be called for accounts to which the managing account has access: either the managing account itself for any Merchant Center account, or any sub-account when the managing account is a multi-client account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String): The ID of the managing account.
  - account_id (String): The ID of the account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountStatus{}} on success
  {:error, info} on failure
  """
  @spec content_accountstatuses_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Content.V2.Model.AccountStatus.t} | {:error, Tesla.Env.t}
  def content_accountstatuses_get(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/{merchantId}/accountstatuses/{accountId}", %{
         "merchantId" => URI.encode_www_form(merchant_id),
         "accountId" => URI.encode_www_form(account_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.AccountStatus{})
  end

  @doc """
  Lists the statuses of the sub-accounts in your Merchant Center account. This method can only be called for multi-client accounts.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String): The ID of the managing account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): The maximum number of account statuses to return in the response, used for paging.
    - :page_token (String): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountstatusesListResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accountstatuses_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Content.V2.Model.AccountstatusesListResponse.t} | {:error, Tesla.Env.t}
  def content_accountstatuses_list(connection, merchant_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/{merchantId}/accountstatuses", %{
         "merchantId" => URI.encode_www_form(merchant_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.AccountstatusesListResponse{})
  end
end
