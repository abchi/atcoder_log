h, w = gets.split.map(&:to_i)
s = []
h.times { s << gets.chomp.chars }

if s.flatten.all? { _1 == '.' }
  puts 'Yes'
  exit
end

s.each.with_index do |x, i|
  x.each.with_index do |y, j|
    next unless y == '#'
    count = 0

    if i > 0
      count += 1 if s[i - 1][j] == '#'
    end
    if i < h - 1
      count += 1 if s[i + 1][j] == '#'
    end
    if j > 0
      count += 1 if s[i][j - 1] == '#'
    end
    if j < w - 1
      count += 1 if s[i][j + 1] == '#'
    end

    if count != 2 && count != 4
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
