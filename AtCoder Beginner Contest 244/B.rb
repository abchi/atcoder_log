n = gets.to_i
t = gets.chomp.chars

x = 0
y = 0
direction = 1

t.each do |o|
  case o
  when 'S'
    case direction
    when 0
      y += 1
    when 1
      x += 1
    when 2
      y -= 1
    when 3
      x -= 1
    end
  when 'R'
    direction += 1
    direction = 0 if direction > 3
  end
end

puts "#{x} #{y}"
