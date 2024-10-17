require "pry-byebug"

def stock_picker(prices_array) 
  result = [0,0]

  highest_return = 0
  prices_array.each_with_index do |buy_price, buy_index|
    prices_array[buy_index..-1].each_with_index do |sell_price, sell_index|
      current_return = sell_price - buy_price
      if current_return > highest_return
        highest_return = current_return
        result = [buy_index, sell_index + buy_index]
      end
    end
  end
  result
end


p stock_picker([17,3,6,9,15,8,6,1,10])
