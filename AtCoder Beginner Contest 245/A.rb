a, b, c, d = gets.split.map(&:to_i)

ab = a * 100 + b
cd = c * 100 + d + 1

puts ab < cd ? 'Takahashi' : 'Aoki'
