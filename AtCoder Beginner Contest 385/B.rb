h, w, x, y = gets.chomp.split.map(&:to_i)
s = []
h.times { s << gets.chomp.chars }
t = gets.chomp.chars

count = 0
x -= 1
y -= 1

t.each do |m|
  case m
  when 'U'
    if s[x - 1][y] != '#'
      if s[x - 1][y] == '@'
        count += 1
        s[x - 1][y] = '_'
      end
      x -= 1
    end
  when 'D'
    if s[x + 1][y] != '#'
      if s[x + 1][y] == '@'
        count += 1
        s[x + 1][y] = '_'
      end
      x += 1
    end
  when 'L'
    if s[x][y - 1] != '#'
      if s[x][y - 1] == '@'
        count += 1
        s[x][y - 1] = '_'
      end
      y -= 1
    end
  when 'R'
    if s[x][y + 1] != '#'
      if s[x][y + 1] == '@'
        count += 1
        s[x][y + 1] = '_'
      end
      y += 1
    end
  end
end

puts "#{x + 1} #{y + 1} #{count}"
