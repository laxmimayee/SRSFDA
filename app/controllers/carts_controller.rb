class CartsController < ApplicationController

  def current
    @cart = current_cart
    if current_cart.line_items.empty?
      flash[:notice] = "Your Cart is empty to checkout"
      redirect_to root_path
    end
  end
  
  def license_agrement
    # @cart = current_cart
    @subscription_id = params[:subscription_id]
    @sub_type = params[:subscription_type]
    @product = Subscription.find(params[:subscription_id])
    @unit_price = 0
    if params[:subscription_type] == "Basic"
    	@unit_price = @product.price
      
    elsif params[:subscription_type] == "Advanced"
    	@unit_price = @product.price
      
   	elsif params[:subscription_type] == "Premium"
      @unit_price = @product.price

    elsif params[:subscription_type] == "Explicit"
      @unit_price = @product.price
      
   	end
    
  end
  
  def billing_payments
    @cart = current_cart
    if current_cart.line_items.empty?
      flash[:notice] = "Your Cart is empty to checkout"
      redirect_to root_path
    end
  end
  
  def billing_payments2
    if current_cart.line_items.empty?
      flash[:notice] = "Your Cart is empty to checkout"
      redirect_to root_path
    end
    @billing_detail = BillingDetail.new
    if current_user.present?
      @billing_detail.first_name = current_user.Firstname
      @billing_detail.last_name = current_user.Lastname
      @billing_detail.email = current_user.email
      @billing_detail.country = current_user.Country
      # @billing_detail.user_id = 1
    end
    @cart = current_cart
  end
  
  def complete_payment
    @billing_detail = BillingDetail.new(params[:billing_detail])
    # @billing_detail.user_id = 1
    @billing_detail.cart_id = current_cart.id
    @billing_detail.save!
    @cart = current_cart
    pay_pal_url = @cart.paypal_url(payment_done_carts_url(cart_id: @cart.id), payment_notifications_url)
puts "hiiiiiii"
puts pay_pal_url
    redirect_to pay_pal_url
  end
  
  def payment_done
    @cart = Cart.find(params[:cart_id]) 
  end
  
end
