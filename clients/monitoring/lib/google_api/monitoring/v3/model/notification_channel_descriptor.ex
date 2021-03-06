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

defmodule GoogleApi.Monitoring.V3.Model.NotificationChannelDescriptor do
  @moduledoc """
  A description of a notification channel. The descriptor includes the properties of the channel and the set of labels or fields that must be specified to configure channels of a given type.

  ## Attributes

  - description (String.t): A human-readable description of the notification channel type. The description may include a description of the properties of the channel and pointers to external documentation. Defaults to: `null`.
  - displayName (String.t): A human-readable name for the notification channel type. This form of the name is suitable for a user interface. Defaults to: `null`.
  - labels ([LabelDescriptor]): The set of labels that must be defined to identify a particular channel of the corresponding type. Each label includes a description for how that field should be populated. Defaults to: `null`.
  - name (String.t): The full REST resource name for this descriptor. The syntax is: projects/[PROJECT_ID]/notificationChannelDescriptors/[TYPE] In the above, [TYPE] is the value of the type field. Defaults to: `null`.
  - supportedTiers ([String.t]): The tiers that support this notification channel; the project service tier must be one of the supported_tiers. Defaults to: `null`.
    - Enum - one of 
  - type (String.t): The type of notification channel, such as \&quot;email\&quot;, \&quot;sms\&quot;, etc. Notification channel types are globally unique. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :displayName => any(),
          :labels => list(GoogleApi.Monitoring.V3.Model.LabelDescriptor.t()),
          :name => any(),
          :supportedTiers => list(any()),
          :type => any()
        }

  field(:description)
  field(:displayName)
  field(:labels, as: GoogleApi.Monitoring.V3.Model.LabelDescriptor, type: :list)
  field(:name)
  field(:supportedTiers, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.NotificationChannelDescriptor do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.NotificationChannelDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.NotificationChannelDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
