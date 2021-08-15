n = gets.to_i

result = case n
         when 1..125
           4
         when 126..211
           6
         when 212..214
           8
         end

puts result
