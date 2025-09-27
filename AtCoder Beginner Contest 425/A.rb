n = gets.to_i

sum = 0
1.upto(n) do |i|
  sum += ((-1) ** i) * (i ** 3)
end

puts sum
