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

defmodule GoogleApi.Analytics.V3.Model.AccountTicket do
  @moduledoc """
  JSON template for an Analytics account ticket. The account ticket consists of the ticket ID and the basic information for the account, property and profile.

  ## Attributes

  *   `account` (*type:* `GoogleApi.Analytics.V3.Model.Account.t`, *default:* `nil`) - Account for this ticket.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Account ticket ID used to access the account ticket.
  *   `kind` (*type:* `String.t`, *default:* `analytics#accountTicket`) - Resource type for account ticket.
  *   `profile` (*type:* `GoogleApi.Analytics.V3.Model.Profile.t`, *default:* `nil`) - View (Profile) for the account.
  *   `redirectUri` (*type:* `String.t`, *default:* `nil`) - Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in APIs console as a callback URL.
  *   `webproperty` (*type:* `GoogleApi.Analytics.V3.Model.Webproperty.t`, *default:* `nil`) - Web property for the account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => GoogleApi.Analytics.V3.Model.Account.t(),
          :id => String.t(),
          :kind => String.t(),
          :profile => GoogleApi.Analytics.V3.Model.Profile.t(),
          :redirectUri => String.t(),
          :webproperty => GoogleApi.Analytics.V3.Model.Webproperty.t()
        }

  field(:account, as: GoogleApi.Analytics.V3.Model.Account)
  field(:id)
  field(:kind)
  field(:profile, as: GoogleApi.Analytics.V3.Model.Profile)
  field(:redirectUri)
  field(:webproperty, as: GoogleApi.Analytics.V3.Model.Webproperty)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.AccountTicket do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.AccountTicket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.AccountTicket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
