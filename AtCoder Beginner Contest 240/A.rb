a, b = gets.split.map(&:to_i)

diff = (a - b).abs

result = if diff == 1
           'Yes'
         elsif a == 1 && b == 10
           'Yes'
         else
           'No'
         end

puts result
