n, w = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

combination = []
1.upto(3) do |i|
  combination += a.combination(i).to_a.map(&:sum)
end

combination.uniq!
puts combination.count { |item| item <= w }
