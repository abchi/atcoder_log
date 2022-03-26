n = gets.to_i
a = gets.split.map(&:to_i)

numbers = [*0..2000]

puts (numbers - a).min
