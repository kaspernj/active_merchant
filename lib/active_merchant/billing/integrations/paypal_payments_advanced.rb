module ActiveMerchant
  module Billing
    module Integrations
      module PaypalPaymentsAdvanced
        autoload :Helper, 'active_merchant/billing/integrations/paypal_payments_advanced/helper.rb'
        autoload :Notification, 'active_merchant/billing/integrations/paypal_payments_advanced/notification.rb'

        mattr_accessor :service_url
        self.service_url = 'https://payflowlink.paypal.com'

        def self.notification(post, options = {})
          Notification.new(post)
        end

        def self.return(query_string, options = {})
          ActiveMerchant::Billing::Integrations::Return.new(query_string)
        end
      end
    end
  end
end
