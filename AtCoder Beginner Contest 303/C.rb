n, m, h, k = gets.split.map(&:to_i)
s = gets.chomp.chars
items = {}
m.times { items[gets.split.map(&:to_i)] = true }

px = 0
py = 0

s.each do |ss|
  case ss
  when 'R'
    px += 1
  when 'L'
    px -= 1
  when 'U'
    py += 1
  when 'D'
    py -= 1
  end

  h -= 1
  if h < 0
    puts 'No'
    exit
  end

  if items[[px, py]] && h < k
    h = k
    items[[px, py]] = false
  end
end

puts 'Yes'
