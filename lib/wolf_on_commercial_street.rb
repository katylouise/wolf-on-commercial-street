class WolfOnCommercialStreet

  def initialize(stock_prices)
    @stock_prices = stock_prices
  end

  def maximise_profits
    minimum = @stock_prices.min
    index_minimum = @stock_prices.find_index(minimum)
    new_stock_prices = @stock_prices[index_minimum..-1]
    maximum = new_stock_prices.max
    index_maximum = new_stock_prices.find_index(maximum)
    return "Buy on day #{index_minimum + 1} and sell on day #{index_maximum + index_minimum + 1}"
  end

end
