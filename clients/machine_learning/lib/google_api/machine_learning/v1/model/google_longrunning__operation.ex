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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleLongrunningOperation do
  @moduledoc """
  This resource represents a long-running operation that is the result of a network API call.

  ## Attributes

  - done (boolean()): If the value is &#x60;false&#x60;, it means the operation is still in progress. If &#x60;true&#x60;, the operation is completed, and either &#x60;error&#x60; or &#x60;response&#x60; is available. Defaults to: `null`.
  - error (GoogleRpcStatus): The error result of the operation in case of failure or cancellation. Defaults to: `null`.
  - metadata (%{optional(String.t) &#x3D;&gt; String.t}): Service-specific metadata associated with the operation.  It typically contains progress information and common metadata such as create time. Some services might not provide such metadata.  Any method that returns a long-running operation should document the metadata type, if any. Defaults to: `null`.
  - name (String.t): The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the &#x60;name&#x60; should be a resource name ending with &#x60;operations/{unique_id}&#x60;. Defaults to: `null`.
  - response (%{optional(String.t) &#x3D;&gt; String.t}): The normal response of the operation in case of success.  If the original method returns no data on success, such as &#x60;Delete&#x60;, the response is &#x60;google.protobuf.Empty&#x60;.  If the original method is standard &#x60;Get&#x60;/&#x60;Create&#x60;/&#x60;Update&#x60;, the response should be the resource.  For other methods, the response should have the type &#x60;XxxResponse&#x60;, where &#x60;Xxx&#x60; is the original method name.  For example, if the original method name is &#x60;TakeSnapshot()&#x60;, the inferred response type is &#x60;TakeSnapshotResponse&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => any(),
          :error => GoogleApi.MachineLearning.V1.Model.GoogleRpcStatus.t(),
          :metadata => map(),
          :name => any(),
          :response => map()
        }

  field(:done)
  field(:error, as: GoogleApi.MachineLearning.V1.Model.GoogleRpcStatus)
  field(:metadata, type: :map)
  field(:name)
  field(:response, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleLongrunningOperation do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleLongrunningOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleLongrunningOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
