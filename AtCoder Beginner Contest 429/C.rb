n = gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new { 0 }
a.each { h[_1] += 1 }

total = n * (n - 1) * (n - 2) / 6
h.each_value { total -= _1 * (_1 - 1) * (_1 - 2) / 6 if _1 >= 3 }

sum = 0
b = 0
h.values.each do |c|
  total -= b * c * (n - b - c)
  b += c
end

puts total
