n, d, p = gets.split.map(&:to_i)
f = gets.split.map(&:to_i)

f.sort!
f.reverse!

sum = 0
f.each_slice(d).each do |x|
  sum += x.sum > p ? p : x.sum
end

puts sum
