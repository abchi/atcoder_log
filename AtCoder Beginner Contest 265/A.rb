x, y, n = gets.split.map(&:to_i)

result = if x * 3 <= y || n < 3
           x * n
         else
           count = n / 3
           remainder = n % 3
           y * count + x * remainder
         end

puts result
