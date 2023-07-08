a, b = gets.split.map(&:to_i)

result = case a
         when 1..3
           [1, 2, 3].include? b
         when 4..6
           [4, 5, 6].include? b
         when 7..9
           [7, 8, 9].include? b
         else
           false
         end

puts result ? 'Yes' : 'No'
