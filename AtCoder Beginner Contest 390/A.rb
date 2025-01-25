a = gets.chomp.split.map(&:to_i)

result = case a
         when [2, 1, 3, 4, 5]
           'Yes'
         when [1, 3, 2, 4, 5]
           'Yes'
         when [1, 2, 4, 3, 5]
           'Yes'
         when [1, 2, 3, 5, 4]
           'Yes'
         else
           'No'
         end

puts result
