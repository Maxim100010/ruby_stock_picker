require 'pry-byebug'

def stock_picker(prices)

  highest = 0
  buyDay = 0
  sellDay = 0
  buyPrice = 0
  sellPrice = 0

  prices.each do |price1|
    prices.each do |price2|
      current = 0
      if prices.find_index(price2) > prices.find_index(price1)
        current = price2 - price1
      end
      if current > highest
        highest = current
        buyDay = prices.find_index(price1) + 1
        sellDay = prices.find_index(price2) + 1
        buyPrice = price1
        sellPrice = price2
      end
    end
  end
  return 'Profit of ' + highest.to_s + ' when buying on day ' + buyDay.to_s + '(' + buyPrice.to_s + ')' + ' and selling on day ' + sellDay.to_s + '(' + sellPrice.to_s + ')'
end

pp stock_picker([17,3,6,9,15,8,6,1,10])
pp stock_picker([17,3,6,9,15,8,6,10,1])
pp stock_picker([10,17,5,2,1,21,20,12])
