n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

count = Hash.new 0
a.each { count[_1] += 1 }
c = count.map { |k, v| k * v }

puts a.sum - c.sort.reverse.take(k).sum
