a, b, c = gets.split.map(&:to_i)

left = a ** 2 + b ** 2
right = c ** 2

puts left < right ? 'Yes' : 'No'
