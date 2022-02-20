x = gets.to_i

result = if x == 0
           0
         elsif x.to_s[-1].to_i == 0
           x.to_s[0...-1].to_i
         elsif x.negative?
           x.to_s[0...-1].to_i - 1
         elsif x.positive?
           x.to_s[0...-1].to_i
         end

puts result
