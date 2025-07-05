n = gets.to_i
s = []
n.times { s << gets.chomp }

result = s.permutation(2).map(&:join)
result.uniq!

puts result.size
