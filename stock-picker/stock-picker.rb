def stock_picker(prices)
  min_price = prices[0]
  min_index = 0
  max_profit = 0
  trading_days = []

  prices.each_with_index do |current_price, index|
    if current_price < min_price
      min_price = current_price 
      min_index = index
    end

    if current_price - min_price > max_profit
      max_profit = current_price - min_price   
      trading_days = [min_index, index]
    end

  end
  trading_days
  
end