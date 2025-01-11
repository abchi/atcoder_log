n, d = gets.chomp.split.map(&:to_i)
tl = []
n.times { tl << gets.chomp.split.map(&:to_i) }

1.upto(d) do |i|
  dup = tl.dup
  result = []
  dup.each { |t, l| result << t * (l + i) }
  puts result.max
end
