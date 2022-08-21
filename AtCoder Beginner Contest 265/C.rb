h, w = gets.split.map(&:to_i)
g = []
c = []
h.times do
  g << gets.chars
  c << [0] * w
end

i = 1
j = 1
loop do
  move = g[i - 1][j - 1]
  case move
  when 'U'
    break if i == 1
    i -= 1
  when 'D'
    break if i == h
    i += 1
  when 'L'
    break if j == 1
    j -= 1
  when 'R'
    break if j == w
    j += 1
  end
  if c[i - 1][j - 1] == 1
    puts -1
    exit
  end
  c[i - 1][j - 1] += 1
end

puts "#{i} #{j}"
