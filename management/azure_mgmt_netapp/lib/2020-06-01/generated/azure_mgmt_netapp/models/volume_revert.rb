# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_06_01
  module Models
    #
    # revert a volume to the snapshot
    #
    class VolumeRevert

      include MsRestAzure

      # @return [String] Resource id of the snapshot
      attr_accessor :snapshot_id


      #
      # Mapper for VolumeRevert class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumeRevert',
          type: {
            name: 'Composite',
            class_name: 'VolumeRevert',
            model_properties: {
              snapshot_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshotId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
