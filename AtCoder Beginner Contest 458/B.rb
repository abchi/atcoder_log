h, w = gets.chomp.split.map(&:to_i)

h.times do |i|
  row = []
  w.times do |j|
    count = 0
    count += 1 if i > 0
    count += 1 if i < h - 1
    count += 1 if j > 0
    count += 1 if j < w - 1
    row << count
  end

  puts row.join ' '
end
