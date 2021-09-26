a, b, c = gets.split.map(&:to_i)

times = (b.to_f / c.to_f).floor

result = -1
1.upto(times) do |i|
  calc = c * i
  if a <= calc && calc <= b
    result = calc
  end
end

puts result
