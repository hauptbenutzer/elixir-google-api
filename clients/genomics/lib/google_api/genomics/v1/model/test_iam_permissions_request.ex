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

defmodule GoogleApi.Genomics.V1.Model.TestIamPermissionsRequest do
  @moduledoc """
  Request message for &#x60;TestIamPermissions&#x60; method.

  ## Attributes

  - permissions ([String.t]): REQUIRED: The set of permissions to check for the &#39;resource&#39;. Permissions with wildcards (such as &#39;*&#39; or &#39;storage.*&#39;) are not allowed. Allowed permissions are&amp;#58;  * &#x60;genomics.datasets.create&#x60; * &#x60;genomics.datasets.delete&#x60; * &#x60;genomics.datasets.get&#x60; * &#x60;genomics.datasets.list&#x60; * &#x60;genomics.datasets.update&#x60; * &#x60;genomics.datasets.getIamPolicy&#x60; * &#x60;genomics.datasets.setIamPolicy&#x60; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permissions => list(any())
        }

  field(:permissions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.TestIamPermissionsRequest do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.TestIamPermissionsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.TestIamPermissionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
