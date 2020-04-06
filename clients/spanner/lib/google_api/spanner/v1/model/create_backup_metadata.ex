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

defmodule GoogleApi.Spanner.V1.Model.CreateBackupMetadata do
  @moduledoc """
  Metadata type for the operation returned by
  CreateBackup.

  ## Attributes

  *   `cancelTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which cancellation of this operation was received.
      Operations.CancelOperation
      starts asynchronous cancellation on a long-running operation. The server
      makes a best effort to cancel the operation, but success is not guaranteed.
      Clients can use
      Operations.GetOperation or
      other methods to check whether the cancellation succeeded or whether the
      operation completed despite cancellation. On successful cancellation,
      the operation is not deleted; instead, it becomes an operation with
      an Operation.error value with a google.rpc.Status.code of 1,
      corresponding to `Code.CANCELLED`.
  *   `database` (*type:* `String.t`, *default:* `nil`) - The name of the database the backup is created from.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the backup being created.
  *   `progress` (*type:* `GoogleApi.Spanner.V1.Model.OperationProgress.t`, *default:* `nil`) - The progress of the
      CreateBackup operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cancelTime => DateTime.t(),
          :database => String.t(),
          :name => String.t(),
          :progress => GoogleApi.Spanner.V1.Model.OperationProgress.t()
        }

  field(:cancelTime, as: DateTime)
  field(:database)
  field(:name)
  field(:progress, as: GoogleApi.Spanner.V1.Model.OperationProgress)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CreateBackupMetadata do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CreateBackupMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CreateBackupMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end