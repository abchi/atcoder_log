t = gets.to_i

t.times do
  n, w = gets.chomp.split.map(&:to_i)
  c = gets.chomp.split.map(&:to_i)

  m = w * 2
  x = Array.new(m) { 0 }
  n.times { x[(_1 + 1) % m] += c[_1] }

  y = x * 2
  s = [0]
  y.each { s << s[-1] + _1 }

  result = Float::INFINITY
  (0...(2 * m)).each do |i|
    break if i + w > y.size
    v = s[i + w] - s[i]
    result = v if v < result
  end

  puts result
end
