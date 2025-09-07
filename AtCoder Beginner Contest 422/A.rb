s = gets.chomp

a, b = s.split('-').map(&:to_i)
if b == 8
  a += 1
  b = 1
else
  b += 1
end

puts "#{a}-#{b}"
