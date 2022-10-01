n = gets.to_i

size = n.to_s(16).size
result = if size == 1
           '0' + n.to_s(16).upcase
         else
           n.to_s(16).upcase
         end

puts result
