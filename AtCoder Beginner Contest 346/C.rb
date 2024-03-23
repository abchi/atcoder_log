n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sum = k * (1 + k) / 2

puts sum - a.find_all { 1 <= _1 && _1 <= k }.uniq.sum
