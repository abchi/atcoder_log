n, k, a = gets.split.map(&:to_i)

index = a
(k - 1).times do
  index = 0 if index >= n
  index += 1
end

puts index
