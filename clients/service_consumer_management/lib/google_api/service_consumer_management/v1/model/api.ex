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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.Api do
  @moduledoc """
  Api is a light-weight descriptor for an API Interface.

  Interfaces are also described as "protocol buffer services" in some contexts,
  such as by the "service" keyword in a .proto file, but they are different
  from API Services, which represent a concrete implementation of an interface
  as opposed to simply a description of methods and bindings. They are also
  sometimes simply referred to as "APIs" in other contexts, such as the name of
  this message itself. See https://cloud.google.com/apis/design/glossary for
  detailed terminology.

  ## Attributes

  *   `methods` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.Method.t)`, *default:* `nil`) - The methods of this interface, in unspecified order.
  *   `mixins` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.Mixin.t)`, *default:* `nil`) - Included interfaces. See Mixin.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully qualified name of this interface, including package name
      followed by the interface's simple name.
  *   `options` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.Option.t)`, *default:* `nil`) - Any metadata attached to the interface.
  *   `sourceContext` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext.t`, *default:* `nil`) - Source context for the protocol buffer service represented by this
      message.
  *   `syntax` (*type:* `String.t`, *default:* `nil`) - The source syntax of the service.
  *   `version` (*type:* `String.t`, *default:* `nil`) - A version string for this interface. If specified, must have the form
      `major-version.minor-version`, as in `1.10`. If the minor version is
      omitted, it defaults to zero. If the entire version field is empty, the
      major version is derived from the package name, as outlined below. If the
      field is not empty, the version in the package name will be verified to be
      consistent with what is provided here.

      The versioning schema uses [semantic
      versioning](http://semver.org) where the major version number
      indicates a breaking change and the minor version an additive,
      non-breaking change. Both version numbers are signals to users
      what to expect from different versions, and should be carefully
      chosen based on the product plan.

      The major version is also reflected in the package name of the
      interface, which must end in `v<major-version>`, as in
      `google.feature.v1`. For major versions 0 and 1, the suffix can
      be omitted. Zero major versions must only be used for
      experimental, non-GA interfaces.

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :methods => list(GoogleApi.ServiceConsumerManagement.V1.Model.Method.t()),
          :mixins => list(GoogleApi.ServiceConsumerManagement.V1.Model.Mixin.t()),
          :name => String.t(),
          :options => list(GoogleApi.ServiceConsumerManagement.V1.Model.Option.t()),
          :sourceContext => GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext.t(),
          :syntax => String.t(),
          :version => String.t()
        }

  field(:methods, as: GoogleApi.ServiceConsumerManagement.V1.Model.Method, type: :list)
  field(:mixins, as: GoogleApi.ServiceConsumerManagement.V1.Model.Mixin, type: :list)
  field(:name)
  field(:options, as: GoogleApi.ServiceConsumerManagement.V1.Model.Option, type: :list)
  field(:sourceContext, as: GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext)
  field(:syntax)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Api do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.Api.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Api do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
