n, a, b = gets.split.map(&:to_i)

line1 = ''
line2 = ''
n.times do |i|
  line1 += (i.even? ? '.' : '#') * b
  line2 += (i.even? ? '#' : '.') * b
end

ans = []
n.times do |i|
  a.times do
    ans << (i.even? ? line1 : line2)
  end
end

puts ans
