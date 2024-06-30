n = gets.to_i
a = gets.chomp.split.map(&:to_i)
w = gets.chomp.split.map(&:to_i)

list = Hash.new { |hash, key| hash[key] = [] }
a.zip(w).each { list[_1[0]] << _1[1] }

puts list.select { |k, v| v.size > 1 }.values.map { _1.sort[0..-2] }.flatten.sum
