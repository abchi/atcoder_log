n = gets.to_i
a = gets.split.map(&:to_i)

result = if [*1..n] == a.sort
           'Yes'
         else
           'No'
         end

puts result
