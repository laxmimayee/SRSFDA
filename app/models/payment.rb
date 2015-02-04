class Payment < ActiveRecord::Base
has_many :subscriptions
 def paypal_url(return_url, notify_url)
    values = {
      :business => AppConfig.paypal_email,
      :cmd => '_cart',
      :upload => 1,
      #:return => return_url,
      :invoice => Time.now.to_i,
      #:notify_url => notify_url
    }
    ret_url = AppConfig.paypal_url + values.to_query
    return ret_url
  end	
end
