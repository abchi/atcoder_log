x, y = gets.split.map(&:to_i)

result = if x >= y
           0
         else
           diff = y - x
           (diff / 10.0).ceil
         end

puts result
