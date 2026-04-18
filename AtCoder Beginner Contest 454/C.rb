n, m = gets.chomp.split.map(&:to_i)
ab = []
m.times { ab << gets.chomp.split.map(&:to_i) }

g = Hash.new { |h, k| h[k] = [] }
ab.each { |a, b| g[a] << b }

visited = {}
queue = [1]
visited[1] = true

until queue.empty?
  v = queue.shift
  g[v].each do |gv|
    next if visited[gv]
    visited[gv] = true
    queue << gv
  end
end

puts visited.size
