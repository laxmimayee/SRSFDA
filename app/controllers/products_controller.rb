class ProductsController < ApplicationController
 before_filter :set_search
 
  def index
   
   @products = Product.where(params[:q])
  # @products = Product.where("price >= ?", price) if price.present?


  end

    def set_search
       @search=Product.search(params[:search])
      # puts params[:q][:name]
       @products = @search.result
    end
    # @search=Product.find(:all, :conditions => ['name =? or price between ? and ?',params[:q][:name],0,params[:q][:price]])
    # @search=Product.find_all_by_name_or_price(params[:q][:name],params[:q][:price])
   

  def import
	  Product.import(params[:file])
	  redirect_to root_url, notice: "Products imported."
	end

def product_params
    params.require(:product).permit(:id, :created_at, :updated_at,:name, :date, :price, :price_change, :eol, :volume_change, :price_chng, :price_price_three_monthsback,
  	 :price_mon_begin, :hvt, :hvb, :monthly_sd, :TI, :Trend_MA, :Trend_TI, :Trend_TIMonthly, :Trigg_up,
  	 :Trigg_down, :up_taregtcall, :down_tagetput, :price_mon_high, :price_mon_low, :sevenday_chng, :Heikin_trigger,
  	 :Heikin_trend)
  end
end
