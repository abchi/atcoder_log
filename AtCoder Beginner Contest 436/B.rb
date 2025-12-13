n = gets.to_i
g = Array.new(n) { Array.new(n) { 0 } }

r = 0
c = n / 2
g[r][c] = 1

(2..n * n).each do |i|
  nr = (r - 1) % n
  nc = (c + 1) % n
  if g[nr][nc] == 0
    r = nr
    c = nc
  else
    r = (r + 1) % n
  end
  g[r][c] = i
end

g.each { puts _1.join ' ' }
