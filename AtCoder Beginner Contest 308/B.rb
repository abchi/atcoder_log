n, m = gets.split.map(&:to_i)
c = gets.chomp.split
d = gets.chomp.split
p = gets.split.map(&:to_i)

dish = d.zip(p[1..]).to_h
sum = 0
c.each do |x|
  sum += dish[x] || p.first
end

puts sum
