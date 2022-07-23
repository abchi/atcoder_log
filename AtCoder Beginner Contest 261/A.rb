l1, r1, l2, r2 = gets.split.map(&:to_i)

red = (l1..r1).to_a
blue = (l2..r2).to_a

size = (red & blue).size

puts size.zero? ? 0 : size - 1
