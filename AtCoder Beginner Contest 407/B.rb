x, y = gets.split.map(&:to_i)

dice = (1..6).to_a.repeated_permutation(2).to_a
count = 0
dice.each do |a, b|
  count += 1 if [a, b].sum >= x || (a - b).abs >= y
end

puts count / dice.size.to_f
