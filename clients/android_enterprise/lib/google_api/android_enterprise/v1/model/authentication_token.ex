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

defmodule GoogleApi.AndroidEnterprise.V1.Model.AuthenticationToken do
  @moduledoc """
  An AuthenticationToken is used by the EMM&#39;s device policy client on a device to provision the given EMM-managed user on that device.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#authenticationToken\&quot;. Defaults to: `null`.
  - token (String.t): The authentication token to be passed to the device policy client on the device where it can be used to provision the account for which this token was generated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :token => any()
        }

  field(:kind)
  field(:token)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.AuthenticationToken do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.AuthenticationToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.AuthenticationToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
