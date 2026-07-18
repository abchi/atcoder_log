n = gets.to_i
abs = []
n.times do
  line = gets.chomp.split
  abs << [line[0].to_i, line[1].to_i, line[2]]
end

sum = 0
max = 0
abs.each do |a, b, c|
  d = b - a
  sum += d if c == 'take'
  max += d
end

puts max - sum
