n = gets.to_i
ab = []
n.times { ab << gets.chomp.split.map(&:to_i) }

ab.sort_by! { |a, b| [a, -b] }

result = []
ab.map { |a, b| b }.each do |v|
  index = result.bsearch_index { _1 >= v }
  index ? result[index] = v : result << v
end

puts result.size
