n = gets.to_i

1.upto(n) do |i|
  puts i % 3 == 0 ? 'Fizz' : i
end
