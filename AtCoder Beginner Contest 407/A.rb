a, b = gets.chomp.split.map(&:to_f)

c = a / b
n = c.floor

puts (n - c).abs < (n + 1 - c).abs ? n : n + 1
