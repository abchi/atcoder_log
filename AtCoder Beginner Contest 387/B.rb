x = gets.to_i

sum = 0
1.upto(9) do |i|
  1.upto(9) do |j|
    c = i * j
    sum += c if c != x
  end
end

puts sum
