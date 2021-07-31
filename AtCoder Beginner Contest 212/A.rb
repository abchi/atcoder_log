a, b = gets.split.map(&:to_i)

result = if 0 < a && b == 0
           'Gold'
         elsif a == 0 && 0 < b
           'Silver'
         elsif 0 < a && 0 < b
           'Alloy'
         end

puts result
