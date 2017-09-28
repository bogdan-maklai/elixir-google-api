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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Installs do
  @moduledoc """
  API calls for all endpoints tagged `Installs`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  import GoogleApi.AndroidEnterprise.V1.RequestBuilder


  @doc """
  Requests to remove an app from a device. A call to get or list will still show the app as installed on the device until it is actually removed.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - install_id (String): The ID of the product represented by the install, e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_installs_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidenterprise_installs_delete(connection, enterprise_id, user_id, device_id, install_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "userId" => URI.encode_www_form(user_id),
         "deviceId" => URI.encode_www_form(device_id),
         "installId" => URI.encode_www_form(install_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves details of an installation of an app on a device.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - install_id (String): The ID of the product represented by the install, e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Install{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_installs_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Install.t} | {:error, Tesla.Env.t}
  def androidenterprise_installs_get(connection, enterprise_id, user_id, device_id, install_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "userId" => URI.encode_www_form(user_id),
         "deviceId" => URI.encode_www_form(device_id),
         "installId" => URI.encode_www_form(install_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Install{})
  end

  @doc """
  Retrieves the details of all apps installed on the specified device.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.InstallsListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_installs_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.InstallsListResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_installs_list(connection, enterprise_id, user_id, device_id, opts \\ []) do
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
    |> url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "userId" => URI.encode_www_form(user_id),
         "deviceId" => URI.encode_www_form(device_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.InstallsListResponse{})
  end

  @doc """
  Requests to install the latest version of an app to a device. If the app is already installed, then it is updated to the latest version if necessary. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - install_id (String): The ID of the product represented by the install, e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Install): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Install{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_installs_patch(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Install.t} | {:error, Tesla.Env.t}
  def androidenterprise_installs_patch(connection, enterprise_id, user_id, device_id, install_id, opts \\ []) do
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
    |> method(:patch)
    |> url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "userId" => URI.encode_www_form(user_id),
         "deviceId" => URI.encode_www_form(device_id),
         "installId" => URI.encode_www_form(install_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Install{})
  end

  @doc """
  Requests to install the latest version of an app to a device. If the app is already installed, then it is updated to the latest version if necessary.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The Android ID of the device.
  - install_id (String): The ID of the product represented by the install, e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Install): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Install{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_installs_update(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Install.t} | {:error, Tesla.Env.t}
  def androidenterprise_installs_update(connection, enterprise_id, user_id, device_id, install_id, opts \\ []) do
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
    |> method(:put)
    |> url("/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}", %{
         "enterpriseId" => URI.encode_www_form(enterprise_id),
         "userId" => URI.encode_www_form(user_id),
         "deviceId" => URI.encode_www_form(device_id),
         "installId" => URI.encode_www_form(install_id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Install{})
  end
end
