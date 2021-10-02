n = gets.chomp.chars.sort.reverse.map(&:to_i)

size = n.size
max = 0
n.permutation(size).to_a.each do |x|
  sum = x[0...size/2].join.to_i * x[size/2..].join.to_i
  max = [max, sum].max
end

puts max
