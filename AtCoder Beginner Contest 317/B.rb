n = gets.to_i
a = gets.split.map(&:to_i)

puts (a.min..a.max).to_a - a
