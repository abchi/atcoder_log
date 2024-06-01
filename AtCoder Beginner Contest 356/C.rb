n, m, k = gets.chomp.split.map(&:to_i)
c = []
a = []
r = []
m.times do
  line = gets.chomp.split
  c << line[0].to_i
  a << line[1..-2].map(&:to_i)
  r << line[-1]
end

count = 0
[false, true].repeated_permutation(n).each do |x|
  result = []
  m.times do |i|
    if a[i].count { x[_1 - 1] } >= k
      result << a[i] if r[i] == 'o'
    else
      result << a[i] if r[i] == 'x'
    end
  end
  count += 1 if result.size == m
end

puts count
