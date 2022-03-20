n = gets.to_i
numbers = (1..(2 * n + 1)).to_a

loop do
  puts numbers.shift
  STDOUT.flush
  input = gets.to_i
  numbers.delete(input)
  break if input == 0
end
