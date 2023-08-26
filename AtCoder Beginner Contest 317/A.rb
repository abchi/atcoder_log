n, h, x = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)

puts p.index { |pp| pp + h >= x } + 1
