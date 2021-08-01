n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort

result = Float::INFINITY
i, j = 0, 0

while i < n && j < m
  calc = (a[i] - b[j]).abs
  result = [result, calc].min
  a[i] < b[j] ? i += 1 : j += 1
end

puts result
