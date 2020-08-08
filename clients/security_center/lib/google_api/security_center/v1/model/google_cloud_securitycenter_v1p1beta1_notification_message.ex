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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1NotificationMessage do
  @moduledoc """
  Security Command Center's Notification

  ## Attributes

  *   `finding` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Finding.t`, *default:* `nil`) - If it's a Finding based notification config, this field will be populated.
  *   `notificationConfigName` (*type:* `String.t`, *default:* `nil`) - Name of the notification config that generated current notification.
  *   `resource` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Resource.t`, *default:* `nil`) - The Cloud resource tied to the notification.
  *   `temporalAsset` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset.t`, *default:* `nil`) - If it's an asset based notification config, this field will be populated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :finding =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Finding.t(),
          :notificationConfigName => String.t(),
          :resource =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Resource.t(),
          :temporalAsset =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset.t()
        }

  field(:finding, as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Finding)
  field(:notificationConfigName)

  field(:resource,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1Resource
  )

  field(:temporalAsset,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1TemporalAsset
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1NotificationMessage do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1NotificationMessage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1p1beta1NotificationMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
