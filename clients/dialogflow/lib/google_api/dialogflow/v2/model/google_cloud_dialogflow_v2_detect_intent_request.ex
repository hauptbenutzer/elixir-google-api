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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentRequest do
  @moduledoc """
  ============================================================================
  Requests and responses for custom methods.
  The request to detect user's intent.

  ## Attributes

  *   `inputAudio` (*type:* `String.t`, *default:* `nil`) - The natural language speech audio to be processed. This field
      should be populated iff `query_input` is set to an input audio config.
      A single request can contain up to 1 minute of speech audio data.
  *   `outputAudioConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.t`, *default:* `nil`) - Instructs the speech synthesizer how to generate the output
      audio. If this field is not set and agent-level speech synthesizer is not
      configured, no output audio is generated.
  *   `outputAudioConfigMask` (*type:* `String.t`, *default:* `nil`) - Mask for output_audio_config indicating which settings in this
      request-level config should override speech synthesizer settings defined at
      agent-level.

      If unspecified or empty, output_audio_config replaces the agent-level
      config in its entirety.
  *   `queryInput` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput.t`, *default:* `nil`) - Required. The input specification. It can be set to:

      1.  an audio config
          which instructs the speech recognizer how to process the speech audio,

      2.  a conversational query in the form of text, or

      3.  an event that specifies which intent to trigger.
  *   `queryParams` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters.t`, *default:* `nil`) - The parameters of this query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputAudio => String.t(),
          :outputAudioConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.t(),
          :outputAudioConfigMask => String.t(),
          :queryInput => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput.t(),
          :queryParams => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters.t()
        }

  field(:inputAudio)

  field(:outputAudioConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig
  )

  field(:outputAudioConfigMask)
  field(:queryInput, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryInput)
  field(:queryParams, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryParameters)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DetectIntentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
