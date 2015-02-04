class AddColumnToProduct < ActiveRecord::Migration
  def change
  	# add_column :products, :name, :string
  	# add_column :products, :date, :date
  	# add_column :products, :price, :float
  	# add_column :products, :price_change, :string
  	# add_column :products, :eol, :string
  	# add_column :products, :volume_change, :float
  	# add_column :products, :price_chng, :string
  	# add_column :products, :price_price_three_monthsback, :string
  	# add_column :products, :price_mon_begin, :string
  	# add_column :products, :hvt, :string
  	# add_column :products, :hvb, :string
  	# add_column :products, :monthly_sd, :string
  	# add_column :products, :TI, :integer
  	# add_column :products, :Trend_MA, :integer
  	# add_column :products, :Trend_TI, :integer
  	# add_column :products, :Trend_TIMonthly, :string
  	# add_column :products, :Trigg_up, :string
  	# add_column :products, :Trigg_down, :string
	  # add_column :products, :up_taregtcall, :string
  	# add_column :products, :down_tagetput, :string
  	# add_column :products, :price_mon_high, :string
  	# add_column :products, :price_mon_low, :string
  	# add_column :products, :sevenday_chng, :string
  	# add_column :products, :Heikin_trigger, :string
  	# add_column :products, :Heikin_trend, :string
  




    add_column :products, :name, :string
    add_column :products, :date, :string
    add_column :products, :price, :float
    add_column :products, :price_change, :string
    add_column :products, :mon_high, :float
    add_column :products, :mon_low, :float
    add_column :products, :mon_begin, :float
    add_column :products, :seven_day_chng, :string
    add_column :products, :two_month_back, :string
    add_column :products, :hv, :float
    add_column :products, :hvt, :float
    add_column :products, :hvb, :float
    add_column :products, :vol_jump, :float
    add_column :products, :TI, :float
    add_column :products, :TI5, :float
    add_column :products, :TI30, :float  
    add_column :products, :TDREI, :float
    add_column :products, :MA_trig, :string
    add_column :products, :BO_trig, :string
    add_column :products, :TI_trig, :string
    add_column :products, :TDREI_trig, :string
    add_column :products, :TREND, :string
    add_column :products, :EoL, :string
  
    add_column :products, :volume_change, :float
    add_column :products, :price_price_three_monthsback, :string
    add_column :products, :price_mon_begin, :string
    add_column :products, :hvt_perc, :string
    add_column :products, :hvb_perc, :string
    add_column :products, :monthly_sd, :string
    add_column :products, :TI_int, :integer
    add_column :products, :Trend_MA, :integer
    add_column :products, :Trend_TI, :integer
    add_column :products, :Trend_TIMonthly, :string
    add_column :products, :Trigg_up, :string
    add_column :products, :Trigg_down, :string
    add_column :products, :up_taregtcall, :string
    add_column :products, :down_tagetput, :string
    add_column :products, :price_mon_high, :string
    add_column :products, :price_mon_low, :string
    add_column :products, :NSE_code, :string
    add_column :products, :generate_option_price, :string
    add_column :products, :HV_round, :string
    add_column :products, :ATM_call_strike, :string
    add_column :products, :ATM_Cal_price, :string
    add_column :products, :ATM_Call_IV, :string
    add_column :products, :ATM_put_strike, :string

    add_column :products, :ATM_put_price, :string
    add_column :products, :ATM_put_IV, :string
    add_column :products, :one_Month_SV, :string
    add_column :products, :target_call_strike, :string
    add_column :products, :target_call_price, :string

    add_column :products, :call_strike_price, :string
    add_column :products, :IV_ATM_IV, :string
    add_column :products, :target_put_strike, :string
    add_column :products, :target_put_price, :string
    add_column :products, :put_strike_price, :string
    add_column :products, :exp_change_by_expiry, :string
    add_column :products, :Yield_put, :string
    add_column :products, :Yield_call, :string
    add_column :products, :Yield_total, :string
    add_column :products, :Call_ATM_1_Mo_HV, :string
    add_column :products, :Put_ATM_1_Mo_HV, :string
     
    add_column :products, :Heikin_trigger, :string
    add_column :products, :Heikin_trend, :string
  end
end
