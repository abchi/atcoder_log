n = gets.to_i
s = gets.chomp.chars

array = [[0, 0]]
x = 0
y = 0
s.each do |ss|
  case ss
  when 'R'
    x += 1
  when 'L'
    x -= 1
  when 'U'
    y += 1
  when 'D'
    y -= 1
  end
  array << [x, y]
end

puts array.size != array.uniq.size ? 'Yes' : 'No'
