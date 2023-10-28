x, y = gets.chomp.split.map(&:to_i)

result = case y - x
         when 1..2
           'Yes'
         when -3..-1
           'Yes'
         else
           'No'
         end

puts result
