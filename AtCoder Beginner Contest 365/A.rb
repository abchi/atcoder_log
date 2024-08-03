y = gets.to_i

result = nil

result = if y % 4 != 0
           365
         elsif y % 4 == 0 && y % 100 != 0
           366
         elsif y % 100 == 0 && y % 400 != 0
           365
         elsif y % 400 == 0
           366
         end

puts result
