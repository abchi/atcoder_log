n = gets.to_i

x = n.to_s(2)
result = if x[-1] == '1'
           0
         else
           x.split('1').last.size
         end

puts result
