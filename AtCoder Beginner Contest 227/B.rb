n = gets.to_i
s = gets.split.map(&:to_i)

result = []

a = 1
loop do
  b = 1
  calc_a = (4 * a * b) + (3 * a) + (3 * b)
  a += 1
  result << calc_a
  loop do
    calc_b = (4 * a * b) + (3 * a) + (3 * b)
    b += 1
    result << calc_b
    break if calc_b >= 1000
  end
  break if calc_a >= 1000
end

result.sort!
result.uniq!

puts (s - result).count
