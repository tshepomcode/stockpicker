#############################################################
#   Implement a method #stock_picker that takes in an array #
#   of stock prices, one for each hypothetical day. It      #
#   should return a pair of days representing the best day  #
#   to buy and the best day to sell. Days start at 0.       #
#                                                           #
#   Hint: You need to buy before you sell                   #
#############################################################

require 'pry'

def stock_picker(prices)
  high_price = prices.max
  prices_list = high_price == prices.first ? (prices.select {|price| price != high_price}) : []
  prices_list.empty? ? () : high_price = prices_list.max
  high_price_index = prices.index(high_price)

  if prices_list.empty? 
    low_price = prices[0..(high_price_index)].min
 else 
   low_price = prices_list[0..(high_price_index)].min
 end

 low_price_index = prices.index(low_price)
 profit = high_price - low_price
 p "[#{low_price_index},#{high_price_index}] # for profit of $#{high_price} - $#{low_price} == $#{profit}"

end

# ##### Workbench #####
# to use Pry-byebug use binding.pry
# binding.pry

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
# # prices = [8, 11, 4, 7, 16, 6, 3, 18, 1]

stock_picker(prices)

##### Workbench #####
# high_price = prices.max
# p "high_price: #{high_price}"

# # new array with new high price if high price is first in the arrary
# prices_list = high_price == prices.first ? (prices.select {|price| price != high_price}) : []

# # check in new array is not empty, if empty, the high price was not first
# p "new array has #{prices_list}"
# prices_list.empty? ? () : high_price = prices_list.max

# # high_price == prices.first ? (high_price = (prices.select {|price| price != high_price}).max) : ()

# #find location of highest in main array
# high_price_index = prices.index(high_price)

# #find lowest price starting from the highest price in array
# # new array from highest price that is not first
# if prices_list.empty? 
#    low_price = prices[0..(high_price_index)].min
# else 
#   low_price = prices_list[0..(high_price_index)].min
# end
# # low_price = prices_list[0..(high_price_index)].min
# low_price_index = prices.index(low_price)
# profit = high_price - low_price

# p "high_price_index = #{high_price_index}"
# p "low_price_index = #{low_price_index}"


# p "low_price = #{low_price}"
# p "high_price: #{high_price}"

# p "[#{low_price_index},#{high_price_index}] # for profit of $#{high_price} - $#{low_price} == $#{profit}"