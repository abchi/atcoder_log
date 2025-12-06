n, m = gets.chomp.split.map(&:to_i)
g = Array.new(n + 1) { [] }

m.times do
  x, y = gets.chomp.split.map(&:to_i)
  g[y] << x
end

q = gets.to_i
o = Array.new(n + 1) { false }

q.times do
  t, v = gets.chomp.split.map(&:to_i)
  if t == 1
    st = [v]
    until st.empty?
      u = st.pop
      next if o[u]
      o[u] = true
      g[u].each { st << _1 }
    end
  else
    puts o[v] ? 'Yes' : 'No'
  end
end
