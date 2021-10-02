a, b = gets.split.map(&:to_i)

result = if a == b
           1
         else
           32 ** (a - b).abs
         end

puts result
