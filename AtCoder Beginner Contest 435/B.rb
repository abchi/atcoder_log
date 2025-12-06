n = gets.to_i
a = gets.chomp.split.map(&:to_i)

comb = []
n.times do |i|
  n.times do |j|
    aa = a[i..j]
    comb << aa unless aa&.empty?
  end
end

count = 0
comb.each do |c|
  sum = c.sum
  count += 1 unless c.any? { sum % _1 == 0 }
end

puts count
