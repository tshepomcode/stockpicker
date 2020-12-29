#############################################################
#   Implement a method #stock_picker that takes in an array #
#   of stock prices, one for each hypothetical day. It      #
#   should return a pair of days representing the best day  #
#   to buy and the best day to sell. Days start at 0.       #
#                                                           #
#   Hint: You need to buy before you sell                   #
#############################################################

require 'pry'

# def stock_picker

# end

# ##### Workbench #####
# to use Pry-byebug use binding.pry
# binding.pry

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

high_price = prices.max
p "high_price: #{high_price}"

# new array with new high price if high price is first in the arrary
prices_no_first_high = high_price == prices.first ? (prices.select {|price| price != high_price}) : []

# check in new array is not empty, if empty, the high price was not first
p "new array has #{prices_no_first_high}"
prices_no_first_high.empty? ? () : high_price == prices_no_first_high.max



high_price == prices.first ? (high_price = (prices.select {|price| price != high_price}).max) : ()

#find location of highest
high_price_index = prices.index(high_price)

#find lowest price starting from the highest price in array
# new array from highest price that is not first
low_price = prices_no_first_high[0..4].min

p "high_price_index = #{high_price_index}"
p "low_price = #{low_price}"

# low_two = prices.min(2)
# top_two = prices.max(2)

p "high_price: #{high_price}"

