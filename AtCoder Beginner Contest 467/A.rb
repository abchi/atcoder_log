h, w = gets.chomp.split.map(&:to_i)

bmi = w * 10000 / h / h

puts bmi >= 25 ? 'Yes' : 'No'
