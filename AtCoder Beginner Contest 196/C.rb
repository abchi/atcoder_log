n = gets.chomp
n = (10 ** (n.size - 1)).to_s if n.size.odd?

size = (n.size / 2.0).ceil
left = n[0...size]
ans = n.to_i >= (left * 2).to_i ? left.to_i : left.to_i - 1

puts ans
