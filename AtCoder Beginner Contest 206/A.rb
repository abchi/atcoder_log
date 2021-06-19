n = gets.to_i

price = (n * 1.08).to_i
regular_price = 206

result = if price < regular_price
           'Yay!'
         elsif price > regular_price
           ':('
         elsif price == regular_price
           'so-so'
         end

puts result
