# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  module Models
    #
    # Useful links for service health event.
    #
    class Link

      include MsRestAzure

      # @return [LinkTypeValues] Type of link. Possible values include:
      # 'Button', 'Hyperlink'
      attr_accessor :type

      # @return [LinkDisplayText] Display text of link.
      attr_accessor :display_text

      # @return [String] It provides the name of portal extension to produce
      # link for given service health event.
      attr_accessor :extension_name

      # @return [String] It provides the name of portal extension blade to
      # produce link for given service health event.
      attr_accessor :blade_name

      # @return It provides a map of parameter name and value for portal
      # extension blade to produce lik for given service health event.
      attr_accessor :parameters


      #
      # Mapper for Link class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'link',
          type: {
            name: 'Composite',
            class_name: 'Link',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              display_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayText',
                type: {
                  name: 'Composite',
                  class_name: 'LinkDisplayText'
                }
              },
              extension_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extensionName',
                type: {
                  name: 'String'
                }
              },
              blade_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bladeName',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
