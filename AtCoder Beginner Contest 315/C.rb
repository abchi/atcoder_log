n = gets.to_i
fs = []
n.times do
  fs << gets.split.map(&:to_i)
end

sort = fs.sort_by { |item| -item[1] }
one = sort[0]
two = sort.find { |item| item[0] != one[0] } || [0, 0]

puts [(one[1] + two[1]), (one[1] + (sort[1][1] / 2))].max
