n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = []
a.sort!
a.each.with_index do |x, i|
  index = a.bsearch_index { |item| item >= x + m } || a.size
  result << index - i
end

puts result.max
