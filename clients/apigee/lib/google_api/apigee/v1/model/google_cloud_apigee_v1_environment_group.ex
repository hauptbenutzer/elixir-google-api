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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroup do
  @moduledoc """
  EnvironmentGroup configuration. An environment group is used to group one or
  more Apigee environments under a single host name.

  ## Attributes

  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. The time at which the environment group was created as milliseconds since
      epoch.
  *   `hostnames` (*type:* `list(String.t)`, *default:* `nil`) - Required. Host names for this environment group.
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. The time at which the environment group was last updated as milliseconds
      since epoch.
  *   `name` (*type:* `String.t`, *default:* `nil`) - ID of the environment group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdAt => String.t(),
          :hostnames => list(String.t()),
          :lastModifiedAt => String.t(),
          :name => String.t()
        }

  field(:createdAt)
  field(:hostnames, type: :list)
  field(:lastModifiedAt)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroup do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end