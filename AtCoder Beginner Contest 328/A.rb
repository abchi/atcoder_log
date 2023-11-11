n, x = gets.chomp.split.map(&:to_i)
s = gets.chomp.split.map(&:to_i)

puts s.select { |score| score <= x }.sum
