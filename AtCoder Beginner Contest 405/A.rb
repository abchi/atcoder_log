r, x = gets.split.map(&:to_i)

result = if x == 1
           (1600..2999).include?(r) ? 'Yes' : 'No'
         else
           (1200..2399).include?(r) ? 'Yes' : 'No'
         end

puts result
