n = gets.to_i

result = case n % 5
         when 0
           n
         when 1..2
           n - n % 5
         when 3..4
           n + (n % 5 - 5).abs
         end

puts result
