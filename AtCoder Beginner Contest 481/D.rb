n, m, s, t = gets.chomp.split.map(&:to_i)
g = Array.new(n + 1) { [] }

m.times do
  a, b = gets.chomp.split.map(&:to_i)
  g[a] << b
end
mn = g.map { _1.min || 0 }
d = Array.new(n + 1) { 1 << 60 }
d[s] = 0
q = [s]

until q.empty?
  v = q.shift
  g[v].each do |to|
    c = (to == mn[v] ? 0 : 1)
    next if d[to] <= d[v] + c
    d[to] = d[v] + c
    c == 0 ? q.unshift(to) : q.push(to)
  end
end

puts d[t] == (1 << 60) ? -1 : d[t]
