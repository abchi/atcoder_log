n, m, q = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

user = (1..n).zip(Array.new(n) { Set.new }).to_h
all_access = Set.new
query.each do |num, x, y|
  case num
  when 1
    user[x].add y
  when 2
    all_access.add x
  when 3
    puts all_access.include?(x) || user[x].include?(y) ? 'Yes' : 'No'
  end
end
