n = gets.to_i
h = gets.chomp.split.map(&:to_i)

index = h.find_index { _1 > h[0] }

puts index.nil? ? -1 : index + 1
