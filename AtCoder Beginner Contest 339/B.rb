h, w, n = gets.chomp.split.map(&:to_i)

grid = []
h.times { grid << Array.new(w) { '.' } }

i = 0
j = 0
d = %w[U R D L]

n.times do
  if grid[i][j] == '.'
    grid[i][j] = '#'
    d.rotate!
  else
    grid[i][j] = '.'
    d.rotate! -1
  end
  case d.first
  when 'U'
    i -= 1
    i = h - 1 if i == -1
  when 'R'
    j += 1
    j = 0 if j == w
  when 'D'
    i += 1
    i = 0 if i == h
  when 'L'
    j -= 1
    j = w - 1 if j == -1
  end
end

grid.each { puts _1.join }
