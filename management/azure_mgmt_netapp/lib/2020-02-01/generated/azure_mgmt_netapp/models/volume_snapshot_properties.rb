# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_02_01
  module Models
    #
    # Volume Snapshot Properties
    #
    class VolumeSnapshotProperties

      include MsRestAzure

      # @return [String] Snapshot Policy ResourceId
      attr_accessor :snapshot_policy_id


      #
      # Mapper for VolumeSnapshotProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumeSnapshotProperties',
          type: {
            name: 'Composite',
            class_name: 'VolumeSnapshotProperties',
            model_properties: {
              snapshot_policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshotPolicyId',
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
