n = gets.to_i
k = gets.chomp.split.map(&:to_i)

k.sort!
result = (1..n / 2).map { |i| k.combination(i).map do |x|
  dup = k.dup
  x.each do |y|
    index = dup.index y
    dup.delete_at index unless index.nil?
  end
  [x, dup]
end }.flatten(1)

puts result.map { _1.map(&:sum) }.map(&:max).min
