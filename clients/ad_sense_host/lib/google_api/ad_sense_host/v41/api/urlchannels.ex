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

defmodule GoogleApi.AdSenseHost.V41.Api.Urlchannels do
  @moduledoc """
  API calls for all endpoints tagged `Urlchannels`.
  """

  alias GoogleApi.AdSenseHost.V41.Connection
  import GoogleApi.AdSenseHost.V41.RequestBuilder


  @doc """
  Delete a URL channel from the host AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - ad_client_id (String): Ad client from which to delete the URL channel.
  - url_channel_id (String): URL channel to delete.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.UrlChannel{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_urlchannels_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AdSenseHost.V41.Model.UrlChannel.t} | {:error, Tesla.Env.t}
  def adsensehost_urlchannels_delete(connection, ad_client_id, url_channel_id, opts \\ []) do
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
    |> method(:delete)
    |> url("/adclients/{adClientId}/urlchannels/{urlChannelId}", %{
         "adClientId" => URI.encode_www_form(ad_client_id),
         "urlChannelId" => URI.encode_www_form(url_channel_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSenseHost.V41.Model.UrlChannel{})
  end

  @doc """
  Add a new URL channel to the host AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - ad_client_id (String): Ad client to which the new URL channel will be added.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (UrlChannel): 

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.UrlChannel{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_urlchannels_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AdSenseHost.V41.Model.UrlChannel.t} | {:error, Tesla.Env.t}
  def adsensehost_urlchannels_insert(connection, ad_client_id, opts \\ []) do
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
    |> url("/adclients/{adClientId}/urlchannels", %{
         "adClientId" => URI.encode_www_form(ad_client_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSenseHost.V41.Model.UrlChannel{})
  end

  @doc """
  List all host URL channels in the host AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSenseHost.V41.Connection): Connection to server
  - ad_client_id (String): Ad client for which to list URL channels.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): The maximum number of URL channels to include in the response, used for paging.
    - :page_token (String): A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSenseHost.V41.Model.UrlChannels{}} on success
  {:error, info} on failure
  """
  @spec adsensehost_urlchannels_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.AdSenseHost.V41.Model.UrlChannels.t} | {:error, Tesla.Env.t}
  def adsensehost_urlchannels_list(connection, ad_client_id, opts \\ []) do
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
    |> url("/adclients/{adClientId}/urlchannels", %{
         "adClientId" => URI.encode_www_form(ad_client_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdSenseHost.V41.Model.UrlChannels{})
  end
end
