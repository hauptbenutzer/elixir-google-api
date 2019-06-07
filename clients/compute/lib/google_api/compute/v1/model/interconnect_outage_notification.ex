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

defmodule GoogleApi.Compute.V1.Model.InterconnectOutageNotification do
  @moduledoc """
  Description of a planned outage on this Interconnect. Next id: 9

  ## Attributes

  - affectedCircuits ([String.t]): If issue_type is IT_PARTIAL_OUTAGE, a list of the Google-side circuit IDs that will be affected. Defaults to: `null`.
  - description (String.t): A description about the purpose of the outage. Defaults to: `null`.
  - endTime (String.t): Scheduled end time for the outage (milliseconds since Unix epoch). Defaults to: `null`.
  - issueType (String.t): Form this outage is expected to take, which can take one of the following values:  - OUTAGE: The Interconnect may be completely out of service for some or all of the specified window.  - PARTIAL_OUTAGE: Some circuits comprising the Interconnect as a whole should remain up, but with reduced bandwidth. Note that the versions of this enum prefixed with \&quot;IT_\&quot; have been deprecated in favor of the unprefixed values. Defaults to: `null`.
    - Enum - one of [IT_OUTAGE, IT_PARTIAL_OUTAGE, OUTAGE, PARTIAL_OUTAGE]
  - name (String.t): Unique identifier for this outage notification. Defaults to: `null`.
  - source (String.t): The party that generated this notification, which can take the following value:  - GOOGLE: this notification as generated by Google. Note that the value of NSRC_GOOGLE has been deprecated in favor of GOOGLE. Defaults to: `null`.
    - Enum - one of [GOOGLE, NSRC_GOOGLE]
  - startTime (String.t): Scheduled start time for the outage (milliseconds since Unix epoch). Defaults to: `null`.
  - state (String.t): State of this notification, which can take one of the following values:  - ACTIVE: This outage notification is active. The event could be in the past, present, or future. See start_time and end_time for scheduling.  - CANCELLED: The outage associated with this notification was cancelled before the outage was due to start. Note that the versions of this enum prefixed with \&quot;NS_\&quot; have been deprecated in favor of the unprefixed values. Defaults to: `null`.
    - Enum - one of [ACTIVE, CANCELLED, NS_ACTIVE, NS_CANCELED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affectedCircuits => list(any()),
          :description => any(),
          :endTime => any(),
          :issueType => any(),
          :name => any(),
          :source => any(),
          :startTime => any(),
          :state => any()
        }

  field(:affectedCircuits, type: :list)
  field(:description)
  field(:endTime)
  field(:issueType)
  field(:name)
  field(:source)
  field(:startTime)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectOutageNotification do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectOutageNotification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectOutageNotification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
