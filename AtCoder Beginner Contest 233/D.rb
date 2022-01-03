n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

s = Array.new(n + 1)
s[0] = 0
0.upto(n - 1) do |i|
  s[i + 1] = s[i] + a[i]
end

count = 0
hash = Hash.new(0)
1.upto(n) do |i|
  hash[s[i - 1]] += 1
  count += hash[s[i] - k]
end

puts count
