a, b = gets.split.map(&:to_f)

result = if (b / a).ceil <= 6 && a <= b
           'Yes'
         else
           'No'
         end

puts result
