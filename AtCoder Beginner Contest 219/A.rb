x = gets.to_i

result = case x
         when 0...40
           40 - x
         when 40...70
           70 - x
         when 70...90
           90 - x
         when 90..100
           'expert'
         end

puts result
