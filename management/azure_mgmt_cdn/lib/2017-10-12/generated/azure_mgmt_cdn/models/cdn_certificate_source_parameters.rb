# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # Defines the parameters for using CDN managed certificate for securing
    # custom domain.
    #
    class CdnCertificateSourceParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.CdnCertificateSourceParameters' .
      attr_accessor :odatatype

      # @return [CertificateType] Type of certificate used. Possible values
      # include: 'Shared', 'Dedicated'
      attr_accessor :certificate_type


      #
      # Mapper for CdnCertificateSourceParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CdnCertificateSourceParameters',
          type: {
            name: 'Composite',
            class_name: 'CdnCertificateSourceParameters',
            model_properties: {
              odatatype: {
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.CdnCertificateSourceParameters',
                type: {
                  name: 'String'
                }
              },
              certificate_type: {
                required: true,
                serialized_name: 'certificateType',
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
