h, w = gets.split.map(&:to_i)
s = []
h.times { s << gets.chomp.chars }

@s, @h, @w = s, h, w
def sensor(x, y, group)
  if x > 0 && y > 0
    if @s[x -1][y - 1] == '#'
      @s[x -1][y - 1] = group
      sensor x - 1, y - 1, group
    end
  end
  if x > 0
    if @s[x -1][y] == '#'
      @s[x -1][y] = group
      sensor x - 1, y, group
    end
  end
  if x > 0 && y < @w - 1
    if @s[x -1][y + 1] == '#'
      @s[x -1][y + 1] = group
      sensor x - 1, y + 1, group
    end
  end
  if y > 0
    if @s[x][y - 1] == '#'
      @s[x][y - 1] = group
      sensor x, y - 1, group
    end
  end
  if @s[x][y] == '#'
    @s[x][y] = group
  end
  if y < @w - 1
    if @s[x][y + 1] == '#'
      @s[x][y + 1] = group
      sensor x, y + 1, group
    end
  end
  if x < @h - 1 && y > 0
    if @s[x + 1][y - 1] == '#'
      @s[x + 1][y - 1] = group
      sensor x + 1, y - 1, group
    end
  end
  if x < @h - 1
    if @s[x + 1][y] == '#'
      @s[x + 1][y] = group
      sensor x + 1, y, group
    end
  end
  if x < @h - 1 && y < @w - 1
    if @s[x + 1][y + 1] == '#'
      @s[x + 1][y + 1] = group
      sensor x + 1, y + 1, group
    end
  end
end

group = 0
h.times do |i|
  w.times do |j|
    if @s[i][j] == '#'
      group += 1
      sensor i, j, group
    end
  end
end

puts group
