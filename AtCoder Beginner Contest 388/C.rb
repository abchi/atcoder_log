n = gets.to_i
a = gets.chomp.split.map(&:to_i)

count = 0
a.each do |x|
  index = a.bsearch_index { _1 >= x * 2 }
  count += a.size - index unless index.nil?
end

puts count
