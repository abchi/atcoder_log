n = gets.to_i
s = []
a = []
n.times do
  line = gets.split
  s << line[0]
  a << line[1].to_i
end

min = a.min
index = a.index min

puts s.rotate index
