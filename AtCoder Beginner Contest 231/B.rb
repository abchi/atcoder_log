n = gets.to_i
s = []
n.times do
  s << gets.chomp
end

hash = s.group_by(&:itself).map { |k, v| [k, v.count] }.to_h
result = hash.sort_by { |k, v| -v }

puts result[0][0]
