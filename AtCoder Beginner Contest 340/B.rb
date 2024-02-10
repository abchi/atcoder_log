q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

a = []
query.each do |x, y|
  case x
  when 1
    a << y
  when 2
    puts a.reverse[y - 1]
  end
end
