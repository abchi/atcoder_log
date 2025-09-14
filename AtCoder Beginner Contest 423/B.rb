n = gets.to_i
l = gets.chomp.split.map(&:to_i)

result = Array.new(n + 1) { false }

i = 0
result[i] = true
while i < n && l[i] == 0
  i += 1
  result[i] = true
end

i = n
result[i] = true
while i > 0 && l[i - 1] == 0
  i -= 1
  result[i] = true
end

puts result.count(false)
