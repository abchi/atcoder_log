n, m = gets.chomp.split.map(&:to_i)
v = Set.new
m.times do
  line = gets.chomp.split.map(&:to_i)
  line.sort!
  v << line if line[0] != line[1]
end

puts m - v.size
