# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Salesforce Marketing Cloud linked service.
    #
    class SalesforceMarketingCloudLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "SalesforceMarketingCloud"
      end

      attr_accessor :type

      # @return Properties used to connect to Salesforce Marketing Cloud. It is
      # mutually exclusive with any other properties in the linked service.
      # Type: object.
      attr_accessor :connection_properties

      # @return The client ID associated with the Salesforce Marketing Cloud
      # application. Type: string (or Expression with resultType string).
      attr_accessor :client_id

      # @return [SecretBase] The client secret associated with the Salesforce
      # Marketing Cloud application. Type: string (or Expression with
      # resultType string).
      attr_accessor :client_secret

      # @return Specifies whether the data source endpoints are encrypted using
      # HTTPS. The default value is true. Type: boolean (or Expression with
      # resultType boolean).
      attr_accessor :use_encrypted_endpoints

      # @return Specifies whether to require the host name in the server's
      # certificate to match the host name of the server when connecting over
      # SSL. The default value is true. Type: boolean (or Expression with
      # resultType boolean).
      attr_accessor :use_host_verification

      # @return Specifies whether to verify the identity of the server when
      # connecting over SSL. The default value is true. Type: boolean (or
      # Expression with resultType boolean).
      attr_accessor :use_peer_verification

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for SalesforceMarketingCloudLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SalesforceMarketingCloud',
          type: {
            name: 'Composite',
            class_name: 'SalesforceMarketingCloudLinkedService',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              connection_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.connectionProperties',
                type: {
                  name: 'Object'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.clientId',
                type: {
                  name: 'Object'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.clientSecret',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              use_encrypted_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.useEncryptedEndpoints',
                type: {
                  name: 'Object'
                }
              },
              use_host_verification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.useHostVerification',
                type: {
                  name: 'Object'
                }
              },
              use_peer_verification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.usePeerVerification',
                type: {
                  name: 'Object'
                }
              },
              encrypted_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.encryptedCredential',
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
