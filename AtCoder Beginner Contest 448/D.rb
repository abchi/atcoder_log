n = gets.chomp.to_i
a = [0] + gets.chomp.split.map(&:to_i)

g = Array.new(n + 1) { [] }
(n - 1).times do
  u, v = gets.chomp.split.map(&:to_i)
  g[u] << v
  g[v] << u
end

count = Hash.new(0)
ans = Array.new(n + 1) { 'No' }
d = 0
stack = [[1, 0, :in]]

while stack.any?
  v, p, state = stack.pop

  if state == :in
    vv = a[v]
    count[vv] += 1
    d += 1 if count[vv] == 2
    ans[v] = 'Yes' if d > 0

    stack << [v, p, :out]

    g[v].each do |nx|
      next if nx == p
      stack << [nx, v, :in]
    end
  else
    vv = a[v]
    d -= 1 if count[vv] == 2
    count[vv] -= 1
  end
end

puts ans[1..]
