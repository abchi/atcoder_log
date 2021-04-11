r, x, y = gets.split.map(&:to_i)

result = Math.sqrt((0 - x) ** 2 + (0 - y) ** 2)
result = if result < r
           (result / r).ceil + 1
         else
           (result / r).ceil
         end

puts result
