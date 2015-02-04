class PaymentsController < ApplicationController
	def complete_payment
		return_url = Subscription.find(1)
		@sub=Payment.new
		pay_pal_url = @sub.paypal_url(return_url, root_url)
		puts "hiiiiii"
		puts pay_pal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr?amount=10&business=b-us-seller_api1.paypal.com&cmd=_cart&invoice=1418543483&item_name='Basic'&item_number=1&notify_url=http%3A%2F%2Flocalhost%3A3001&quantity=1&return=http%3A%2F%2Flocalhost%3A3001%"
		redirect_to pay_pal_url
	end
end
# @billing_detail = BillingDetail.new(params[:billing_detail])
#     # @billing_detail.user_id = 1
#     @billing_detail.cart_id = current_cart.id
#     @billing_detail.save!
#     @cart = current_cart
#     pay_pal_url = @cart.paypal_url(payment_done_carts_url(cart_id: @cart.id), payment_notifications_url)
# puts "hiiiiiii"
# puts pay_pal_url
#     redirect_to pay_pal_url
