q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

hash = Hash.new(0)
query.each do |n, x|
  case n
  when 1
    hash[x] += 1
  when 2
    hash[x] -= 1
    hash.delete x if hash[x] == 0
  when 3
    puts hash.size
  end
end
