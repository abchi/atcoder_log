a, b = gets.split.map(&:to_i)

culprit = [1, 2, 3]
culprit.delete a
culprit.delete b

puts culprit.size == 1 ? culprit[0] : -1
