n, a, x, y = gets.split.map(&:to_i)

if n > a
  sum = a * x + (n - a) * y
else
  sum = n * x
end

puts sum
