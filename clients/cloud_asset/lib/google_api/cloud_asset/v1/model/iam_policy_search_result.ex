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

defmodule GoogleApi.CloudAsset.V1.Model.IamPolicySearchResult do
  @moduledoc """
  A result of IAM Policy search, containing information of an IAM policy.

  ## Attributes

  *   `explanation` (*type:* `GoogleApi.CloudAsset.V1.Model.Explanation.t`, *default:* `nil`) - Explanation about the IAM policy search result. It contains additional
      information to explain why the search result matches the query.
  *   `policy` (*type:* `GoogleApi.CloudAsset.V1.Model.Policy.t`, *default:* `nil`) - The IAM policy directly set on the given resource. Note that the original
      IAM policy can contain multiple bindings. This only contains the bindings
      that match the given query. For queries that don't contain a constrain on
      policies (e.g., an empty query), this contains all the bindings.

      To search against the `policy` bindings:

      * use a field query, as following:
          - query by the policy contained members. Example:
            `policy : "amy@gmail.com"`
          - query by the policy contained roles. Example:
            `policy : "roles/compute.admin"`
          - query by the policy contained roles' implied permissions. Example:
            `policy.role.permissions : "compute.instances.create"`
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project that the associated GCP resource belongs to, in the form of
      projects/{PROJECT_NUMBER}. If an IAM policy is set on a resource (like VM
      instance, Cloud Storage bucket), the project field will indicate the
      project that contains the resource. If an IAM policy is set on a folder or
      orgnization, the project field will be empty.

      To search against the `project`:

      * specify the `scope` field as this project in your search request.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - The full resource name of the resource associated with this IAM policy.
      Example:
      "//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1".
      See [Cloud Asset Inventory Resource Name
      Format](https://cloud.google.com/asset-inventory/docs/resource-name-format)
      for more information.

      To search against the `resource`:

      * use a field query. Example: `resource : "organizations/123"`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explanation => GoogleApi.CloudAsset.V1.Model.Explanation.t(),
          :policy => GoogleApi.CloudAsset.V1.Model.Policy.t(),
          :project => String.t(),
          :resource => String.t()
        }

  field(:explanation, as: GoogleApi.CloudAsset.V1.Model.Explanation)
  field(:policy, as: GoogleApi.CloudAsset.V1.Model.Policy)
  field(:project)
  field(:resource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.IamPolicySearchResult do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.IamPolicySearchResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.IamPolicySearchResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end