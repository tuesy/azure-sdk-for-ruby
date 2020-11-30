# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # Metadata of IoT device/IoT Edge device to be configured.
    #
    class IoTDeviceInfo

      include MsRestAzure

      # @return [String] ID of the IoT device/edge device.
      attr_accessor :device_id

      # @return [String] Host name for the IoT hub associated to the device.
      attr_accessor :io_thost_hub

      # @return [String] Id for the IoT hub associated to the device.
      attr_accessor :io_thost_hub_id

      # @return [Authentication] IoT device authentication info.
      attr_accessor :authentication


      #
      # Mapper for IoTDeviceInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTDeviceInfo',
          type: {
            name: 'Composite',
            class_name: 'IoTDeviceInfo',
            model_properties: {
              device_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deviceId',
                type: {
                  name: 'String'
                }
              },
              io_thost_hub: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ioTHostHub',
                type: {
                  name: 'String'
                }
              },
              io_thost_hub_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ioTHostHubId',
                type: {
                  name: 'String'
                }
              },
              authentication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authentication',
                type: {
                  name: 'Composite',
                  class_name: 'Authentication'
                }
              }
            }
          }
        }
      end
    end
  end
end
