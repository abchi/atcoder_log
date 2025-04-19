q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

queue = []
query.each do |n, x|
  case n
  when 1
    queue << x
  when 2
    puts queue.shift
  end
end
