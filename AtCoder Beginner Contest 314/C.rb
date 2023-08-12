n, m = gets.split.map(&:to_i)
s = gets.chomp
c = gets.split.map(&:to_i)

a = Array.new(m) { [] }
s.chars.zip(c).each { |x, i| a[i - 1] << x }
a.map { |item| item.rotate!(-1) }

aa = a.dup
result = []
c.each do |i|
  result << aa[i - 1].shift
end

puts result.join
