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

defmodule GoogleApi.Sheets.V4.Model.GridCoordinate do
  @moduledoc """
  A coordinate in a sheet. All indexes are zero-based.

  ## Attributes

  - columnIndex (integer()): The column index of the coordinate. Defaults to: `null`.
  - rowIndex (integer()): The row index of the coordinate. Defaults to: `null`.
  - sheetId (integer()): The sheet this coordinate is on. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnIndex => any(),
          :rowIndex => any(),
          :sheetId => any()
        }

  field(:columnIndex)
  field(:rowIndex)
  field(:sheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.GridCoordinate do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.GridCoordinate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.GridCoordinate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
