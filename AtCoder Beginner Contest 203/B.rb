n, k = gets.split.map(&:to_i)

sum = 0
1.upto(n) do |x|
  1.upto(k) do |y|
    sum += x * 100 + y
  end
end

puts sum
