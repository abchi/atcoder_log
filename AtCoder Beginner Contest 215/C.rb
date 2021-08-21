s, k = gets.chomp.split
k = k.to_i
size = s.size

puts s.chars.sort.permutation(size).to_a.uniq[k-1].join
