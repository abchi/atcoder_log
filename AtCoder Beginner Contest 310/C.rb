n = gets.to_i

hash = {}
n.times do
  line = gets.chomp
  hash[line] = true if hash[line].nil? && hash[line.reverse].nil?
end

puts hash.size
