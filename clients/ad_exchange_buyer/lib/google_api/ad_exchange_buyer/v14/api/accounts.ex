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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  import GoogleApi.AdExchangeBuyer.V14.RequestBuilder


  @doc """
  Gets one account by ID.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - id (Integer): The account id
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_accounts_get(Tesla.Env.client, Integer.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Account.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_accounts_get(connection, id, opts \\ []) do
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
    |> url("/accounts/{id}", %{
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.Account{})
  end

  @doc """
  Retrieves the authenticated user&#39;s list of accounts.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.AccountsList{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_accounts_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.AccountsList.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_accounts_list(connection, opts \\ []) do
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
    |> url("/accounts")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.AccountsList{})
  end

  @doc """
  Updates an existing account. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - id (Integer): The account id
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :confirm_unsafe_account_change (Boolean): Confirmation for erasing bidder and cookie matching urls.
    - :body (Account): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_accounts_patch(Tesla.Env.client, Integer.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Account.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_accounts_patch(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"confirmUnsafeAccountChange" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/accounts/{id}", %{
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.Account{})
  end

  @doc """
  Updates an existing account.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - id (Integer): The account id
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :confirm_unsafe_account_change (Boolean): Confirmation for erasing bidder and cookie matching urls.
    - :body (Account): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_accounts_update(Tesla.Env.client, Integer.t, keyword()) :: {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Account.t} | {:error, Tesla.Env.t}
  def adexchangebuyer_accounts_update(connection, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"confirmUnsafeAccountChange" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/accounts/{id}", %{
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdExchangeBuyer.V14.Model.Account{})
  end
end
