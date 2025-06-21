n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

bit_array = Array.new(n, 0)
c = 0
result = []

a.each do |x|
  i = n - x
  b = bit_array[i]
  l = i + 1 < n ? bit_array[i + 1] : 0
  r = i - 1 >= 0 ? bit_array[i - 1] : 0

  c += 1 if b == 0 && l == 0 && r == 0
  c -= 1 if b == 0 && l == 1 && r == 1
  c -= 1 if b == 1 && l == 0 && r == 0
  c += 1 if b == 1 && l == 1 && r == 1

  bit_array[i] ^= 1
  result << c
end

puts result
