n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

array1 = Array.new(n + 1) { 0 }
array2 = Array.new(n + 1) { 0 }
n.times do |i|
  array1[i + 1] = array1[i] + a[i]
  array2[i + 1] = array2[i] + b[i]
end

array3 = Array.new(n + 1) { 0 }
(n - 1).downto(0) do |i|
  array3[i] = array3[i + 1] + c[i]
end

result = -Float::INFINITY
w = -Float::INFINITY
1.upto(n - 2) do |y|
  x = y - 1
  w = [w, array1[x + 1] - array2[x + 1]].max
  result = [result, w + array2[y + 1] + array3[y + 1]].max
end

puts result
