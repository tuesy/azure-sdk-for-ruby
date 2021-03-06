# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # The parameters to provide for the Sms channel.
    #
    class SmsChannelProperties

      include MsRestAzure

      # @return [String] The Sms phone
      attr_accessor :phone

      # @return [String] The Sms account SID. Value only returned through POST
      # to the action Channel List API, otherwise empty.
      attr_accessor :account_sid

      # @return [String] The Sms auth token. Value only returned through POST
      # to the action Channel List API, otherwise empty.
      attr_accessor :auth_token

      # @return [Boolean] Whether this channel is validated for the bot
      attr_accessor :is_validated

      # @return [Boolean] Whether this channel is enabled for the bot
      attr_accessor :is_enabled


      #
      # Mapper for SmsChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SmsChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'SmsChannelProperties',
            model_properties: {
              phone: {
                client_side_validation: true,
                required: true,
                serialized_name: 'phone',
                type: {
                  name: 'String'
                }
              },
              account_sid: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountSID',
                type: {
                  name: 'String'
                }
              },
              auth_token: {
                client_side_validation: true,
                required: true,
                serialized_name: 'authToken',
                type: {
                  name: 'String'
                }
              },
              is_validated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isValidated',
                type: {
                  name: 'Boolean'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
