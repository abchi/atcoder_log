n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = []
q.times do
  x << gets.to_i
end

a.sort!
a_size = a.size
x.each do |y|
  index = a.bsearch_index { |item| item >= y }
  puts index.nil? ? 0 : (a_size - index)
end
