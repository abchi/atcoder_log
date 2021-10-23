s = gets.chomp

result = if s[-2..-1] == 'er'
           'er'
         else
           'ist'
         end

puts result
