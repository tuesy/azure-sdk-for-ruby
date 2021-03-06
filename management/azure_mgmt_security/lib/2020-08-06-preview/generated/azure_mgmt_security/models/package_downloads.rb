# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_08_06_preview
  module Models
    #
    # Information about package downloads
    #
    class PackageDownloads

      include MsRestAzure

      # @return [PackageDownloadsSensor] Contains all Sensor binary downloads
      attr_accessor :sensor

      # @return [PackageDownloadsCentralManager] All downloads for Central
      # Manager
      attr_accessor :central_manager

      # @return [PackageDownloadsThreatIntelligence] All downloads for threat
      # intelligence
      attr_accessor :threat_intelligence


      #
      # Mapper for PackageDownloads class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PackageDownloads',
          type: {
            name: 'Composite',
            class_name: 'PackageDownloads',
            model_properties: {
              sensor: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sensor',
                type: {
                  name: 'Composite',
                  class_name: 'PackageDownloadsSensor'
                }
              },
              central_manager: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'centralManager',
                type: {
                  name: 'Composite',
                  class_name: 'PackageDownloadsCentralManager'
                }
              },
              threat_intelligence: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'threatIntelligence',
                type: {
                  name: 'Composite',
                  class_name: 'PackageDownloadsThreatIntelligence'
                }
              }
            }
          }
        }
      end
    end
  end
end
