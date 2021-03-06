module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      # Documentation: http://merchant.w1.ru/checkout/site/develope/
      module W1
        autoload :Helper, File.dirname(__FILE__) + '/w1/helper.rb'
        autoload :Notification, File.dirname(__FILE__) + '/w1/notification.rb'
        autoload :Return, File.dirname(__FILE__) + '/w1/return.rb'
       
        mattr_accessor :service_url
        self.service_url = 'https://merchant.w1.ru/checkout/default.aspx'

        mattr_accessor :signature_parameter_name
        self.signature_parameter_name = 'WMI_SIGNATURE'

        def self.helper(order, account, options = {})
          Helper.new(order, account, options)
        end

        def self.notification(query_string, options = {})
          Notification.new(query_string, options)
        end  
        
        def self.return(query_string)
          Return.new(query_string)
        end
      end
    end
  end
end