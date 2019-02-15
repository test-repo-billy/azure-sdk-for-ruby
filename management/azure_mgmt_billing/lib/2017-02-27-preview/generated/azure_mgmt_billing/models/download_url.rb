# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Billing::Mgmt::V2017_02_27_preview
  module Models
    #
    # A secure URL that can be used to download a PDF invoice until the URL
    # expires.
    #
    class DownloadUrl

      include MsRestAzure

      # @return [DateTime] The time in UTC at which this download URL will
      # expire.
      attr_accessor :expiry_time

      # @return [String] The URL to the PDF file.
      attr_accessor :url


      #
      # Mapper for DownloadUrl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DownloadUrl',
          type: {
            name: 'Composite',
            class_name: 'DownloadUrl',
            model_properties: {
              expiry_time: {
                required: false,
                read_only: true,
                serialized_name: 'expiryTime',
                type: {
                  name: 'DateTime'
                }
              },
              url: {
                required: false,
                read_only: true,
                serialized_name: 'url',
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
