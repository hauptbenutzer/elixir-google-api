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

defmodule GoogleApi.Partners.V2.Model.Analytics do
  @moduledoc """
  Analytics data for a &#x60;Company&#x60; within a single day.

  ## Attributes

  - contacts (AnalyticsDataPoint): Instances of users contacting the &#x60;Company&#x60; on the specified date. Defaults to: `null`.
  - eventDate (DateTime): Date on which these events occurred. Defaults to: `null`.
  - profileViews (AnalyticsDataPoint): Instances of users viewing the &#x60;Company&#x60; profile on the specified date. Defaults to: `null`.
  - searchViews (AnalyticsDataPoint): Instances of users seeing the &#x60;Company&#x60; in Google Partners Search results on the specified date. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contacts => GoogleApi.Partners.V2.Model.AnalyticsDataPoint.t(),
          :eventDate => any(),
          :profileViews => GoogleApi.Partners.V2.Model.AnalyticsDataPoint.t(),
          :searchViews => GoogleApi.Partners.V2.Model.AnalyticsDataPoint.t()
        }

  field(:contacts, as: GoogleApi.Partners.V2.Model.AnalyticsDataPoint)
  field(:eventDate)
  field(:profileViews, as: GoogleApi.Partners.V2.Model.AnalyticsDataPoint)
  field(:searchViews, as: GoogleApi.Partners.V2.Model.AnalyticsDataPoint)
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.Analytics do
  def decode(value, options) do
    GoogleApi.Partners.V2.Model.Analytics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.Analytics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
