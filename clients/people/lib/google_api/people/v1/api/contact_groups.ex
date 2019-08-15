# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.People.V1.Api.ContactGroups do
  @moduledoc """
  API calls for all endpoints tagged `ContactGroups`.
  """

  alias GoogleApi.People.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Get a list of contact groups owned by the authenticated user by specifying
  a list of contact group resource names.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:maxMembers` (*type:* `integer()`) - Specifies the maximum number of members to return for each group.
      *   `:resourceNames` (*type:* `list(String.t)`) - The resource names of the contact groups to get.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.BatchGetContactGroupsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_batch_get(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.BatchGetContactGroupsResponse.t()}
          | {:error, Tesla.Env.t()}
  def people_contact_groups_batch_get(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :maxMembers => :query,
      :resourceNames => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/contactGroups:batchGet", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.People.V1.Model.BatchGetContactGroupsResponse{}]
    )
  end

  @doc """
  Create a new contact group owned by the authenticated user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.People.V1.Model.CreateContactGroupRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.ContactGroup{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.ContactGroup.t()} | {:error, Tesla.Env.t()}
  def people_contact_groups_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/contactGroups", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.ContactGroup{}])
  end

  @doc """
  Delete an existing contact group owned by the authenticated user by
  specifying a contact group resource name.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `contact_groups_id` (*type:* `String.t`) - Part of `resourceName`. The resource name of the contact group to delete.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:deleteContacts` (*type:* `boolean()`) - Set to true to also delete the contacts in the specified group.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def people_contact_groups_delete(
        connection,
        contact_groups_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :deleteContacts => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/contactGroups/{contactGroupsId}", %{
        "contactGroupsId" => URI.encode(contact_groups_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.Empty{}])
  end

  @doc """
  Get a specific contact group owned by the authenticated user by specifying
  a contact group resource name.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `contact_groups_id` (*type:* `String.t`) - Part of `resourceName`. The resource name of the contact group to get.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:maxMembers` (*type:* `integer()`) - Specifies the maximum number of members to return.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.ContactGroup{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.ContactGroup.t()} | {:error, Tesla.Env.t()}
  def people_contact_groups_get(connection, contact_groups_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :maxMembers => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/contactGroups/{contactGroupsId}", %{
        "contactGroupsId" => URI.encode(contact_groups_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.ContactGroup{}])
  end

  @doc """
  List all contact groups owned by the authenticated user. Members of the
  contact groups are not populated.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - The maximum number of resources to return.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous call to
          [ListContactGroups](/people/api/rest/v1/contactgroups/list).
          Requests the next page of resources.
      *   `:syncToken` (*type:* `String.t`) - A sync token, returned by a previous call to `contactgroups.list`.
          Only resources changed since the sync token was created will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.ListContactGroupsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.ListContactGroupsResponse.t()} | {:error, Tesla.Env.t()}
  def people_contact_groups_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query,
      :syncToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/contactGroups", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.ListContactGroupsResponse{}])
  end

  @doc """
  Update the name of an existing contact group owned by the authenticated
  user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `contact_groups_id` (*type:* `String.t`) - Part of `contactGroup.resourceName`. The resource name for the contact group, assigned by the server. An ASCII
      string, in the form of `contactGroups/`<var>contact_group_id</var>.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.People.V1.Model.UpdateContactGroupRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.ContactGroup{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.ContactGroup.t()} | {:error, Tesla.Env.t()}
  def people_contact_groups_update(
        connection,
        contact_groups_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1/contactGroups/{contactGroupsId}", %{
        "contactGroupsId" => URI.encode(contact_groups_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.People.V1.Model.ContactGroup{}])
  end

  @doc """
  Modify the members of a contact group owned by the authenticated user.
  <br>
  The only system contact groups that can have members added are
  `contactGroups/myContacts` and `contactGroups/starred`. Other system
  contact groups are deprecated and can only have contacts removed.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.People.V1.Connection.t`) - Connection to server
  *   `contact_groups_id` (*type:* `String.t`) - Part of `resourceName`. The resource name of the contact group to modify.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.People.V1.Model.ModifyContactGroupMembersRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.People.V1.Model.ModifyContactGroupMembersResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec people_contact_groups_members_modify(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.People.V1.Model.ModifyContactGroupMembersResponse.t()}
          | {:error, Tesla.Env.t()}
  def people_contact_groups_members_modify(
        connection,
        contact_groups_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/contactGroups/{contactGroupsId}/members:modify", %{
        "contactGroupsId" => URI.encode(contact_groups_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.People.V1.Model.ModifyContactGroupMembersResponse{}]
    )
  end
end
