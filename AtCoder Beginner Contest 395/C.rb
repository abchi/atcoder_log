n = gets.to_i
a = gets.split.map(&:to_i)

min = n + 1
hash = {}
i = 0
a.each_with_index do |value, j|
  if hash.key?(value) && hash[value] >= i
    min = [min, j - hash[value] + 1].min
    i = hash[value] + 1
  end
  hash[value] = j
end
result = min == n + 1 ? -1 : min

puts result
