h, w = gets.chomp.split.map(&:to_i)
c = []
h.times { c << gets.chomp.chars }

top = h
bottom = -1
left = w
right = -1

h.times do |i|
  w.times do |j|
    if c[i][j] == '#'
      top = [top, i].min
      bottom = [bottom, i].max
      left = [left, j].min
      right = [right, j].max
    end
  end
end

(top..bottom).each do |i|
  puts c[i][left..right].join
end
