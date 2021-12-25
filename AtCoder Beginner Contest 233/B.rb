l, r = gets.split.map(&:to_i)
s = gets.chomp

result = s[0...(l - 1)] + s[(l - 1)..(r - 1)].reverse + s[r..]

puts result
