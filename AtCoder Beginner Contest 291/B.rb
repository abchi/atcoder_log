n = gets.to_i
x = gets.split.map(&:to_i)

x.sort!
n.times do
  x.shift
  x.pop
end

puts x.sum.to_f / x.size
