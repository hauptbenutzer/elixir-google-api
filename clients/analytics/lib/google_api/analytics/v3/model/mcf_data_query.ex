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

defmodule GoogleApi.Analytics.V3.Model.McfDataQuery do
  @moduledoc """
  Analytics data request query parameters.

  ## Attributes

  *   `dimensions` (*type:* `String.t`, *default:* `nil`) - List of analytics dimensions.
  *   `end-date` (*type:* `String.t`, *default:* `nil`) - End date.
  *   `filters` (*type:* `String.t`, *default:* `nil`) - Comma-separated list of dimension or metric filters.
  *   `ids` (*type:* `String.t`, *default:* `nil`) - Unique table ID.
  *   `max-results` (*type:* `integer()`, *default:* `nil`) - Maximum results per page.
  *   `metrics` (*type:* `list(String.t)`, *default:* `nil`) - List of analytics metrics.
  *   `samplingLevel` (*type:* `String.t`, *default:* `nil`) - Desired sampling level
  *   `segment` (*type:* `String.t`, *default:* `nil`) - Analytics advanced segment.
  *   `sort` (*type:* `list(String.t)`, *default:* `nil`) - List of dimensions or metrics based on which Analytics data is sorted.
  *   `start-date` (*type:* `String.t`, *default:* `nil`) - Start date.
  *   `start-index` (*type:* `integer()`, *default:* `nil`) - Start index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => String.t(),
          :"end-date" => String.t(),
          :filters => String.t(),
          :ids => String.t(),
          :"max-results" => integer(),
          :metrics => list(String.t()),
          :samplingLevel => String.t(),
          :segment => String.t(),
          :sort => list(String.t()),
          :"start-date" => String.t(),
          :"start-index" => integer()
        }

  field(:dimensions)
  field(:"end-date")
  field(:filters)
  field(:ids)
  field(:"max-results")
  field(:metrics, type: :list)
  field(:samplingLevel)
  field(:segment)
  field(:sort, type: :list)
  field(:"start-date")
  field(:"start-index")
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.McfDataQuery do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.McfDataQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.McfDataQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
