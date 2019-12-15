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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteRequest do
  @moduledoc """
  A request message for
  Execution.Execute.

  ## Attributes

  *   `actionDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest of the Action to
      execute.
  *   `executionPolicy` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy.t`, *default:* `nil`) - An optional policy for execution of the action.
      The server will have a default policy if this is not provided.
  *   `resultsCachePolicy` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ResultsCachePolicy.t`, *default:* `nil`) - An optional policy for the results of this execution in the remote cache.
      The server will have a default policy if this is not provided.
      This may be applied to both the ActionResult and the associated blobs.
  *   `skipCacheLookup` (*type:* `boolean()`, *default:* `nil`) - If true, the action will be executed even if its result is already
      present in the ActionCache.
      The execution is still allowed to be merged with other in-flight executions
      of the same action, however - semantically, the service MUST only guarantee
      that the results of an execution with this field set were not visible
      before the corresponding execution request was sent.
      Note that actions from execution requests setting this field set are still
      eligible to be entered into the action cache upon completion, and services
      SHOULD overwrite any existing entries that may exist. This allows
      skip_cache_lookup requests to be used as a mechanism for replacing action
      cache entries that reference outputs no longer available or that are
      poisoned in any way.
      If false, the result may be served from the action cache.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t(),
          :executionPolicy =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy.t(),
          :resultsCachePolicy =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ResultsCachePolicy.t(),
          :skipCacheLookup => boolean()
        }

  field(:actionDigest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest
  )

  field(:executionPolicy,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy
  )

  field(:resultsCachePolicy,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ResultsCachePolicy
  )

  field(:skipCacheLookup)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteRequest do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecuteRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end