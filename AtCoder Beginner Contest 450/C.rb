h, w = gets.chomp.split.map(&:to_i)
g = []
h.times { g << gets.chomp.chars }

result = 0
v = Array.new(h) { Array.new(w) { false } }
(0...h).each do |i|
  (0...w).each do |j|
    next if g[i][j] == '#' || v[i][j]

    q = [[i, j]]
    v[i][j] = true
    f = false

    until q.empty?
      x, y = q.shift

      f = true if x == 0 || x == h - 1 || y == 0 || y == w - 1

      [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |dx, dy|
        nx = x + dx
        ny = y + dy
        next if nx < 0 || nx >= h || ny < 0 || ny >= w
        next if g[nx][ny] == '#' || v[nx][ny]

        v[nx][ny] = true
        q << [nx, ny]
      end
    end

    result += 1 unless f
  end
end

puts result
