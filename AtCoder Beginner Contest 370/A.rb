l, r = gets.chomp.split.map(&:to_i)

result = case [l, r]
         when [0, 0]
           'Invalid'
         when [0, 1]
           'No'
         when [1, 0]
           'Yes'
         when [1, 1]
           'Invalid'
         end

puts result
