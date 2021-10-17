x = gets.to_i

result = if x == 0
           'No'
         elsif x % 100 == 0
           'Yes'
         else
           'No'
         end

puts result
