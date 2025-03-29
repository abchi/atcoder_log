n, m = gets.chomp.split.map(&:to_i)
uv = []
m.times { uv << gets.chomp.split.map(&:to_i) }

parent = (0...n).to_a
rank = Array.new(n, 0)

find = lambda do |x|
  while parent[x] != x
    parent[x] = parent[parent[x]]
    x = parent[x]
  end
  x
end

union = lambda do |x, y|
  fx = find.call(x)
  fy = find.call(y)

  return false if fx == fy

  if rank[fx] < rank[fy]
    parent[fx] = fy
  elsif rank[fx] > rank[fy]
    parent[fy] = fx
  else
    parent[fy] = fx
    rank[fx] += 1
  end

  true
end

count = 0
uv.each { |u, v| count += 1 unless union.call(u - 1, v - 1) }

puts count
