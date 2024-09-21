m = gets.to_i

num = [1, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683, 59049, 177147]
result = []
sum = m
loop do
  index = num.bsearch_index { _1 > sum } - 1
  x = num[index]
  sum -= x
  result << index
  break if sum == 0
end

puts result.size
puts result.join ' '
