n = gets.to_i
s = gets.chomp

max = 0
count = 0
s.chars.each do |x|
  if x == 'R'
    count += 1
    max = [count, max].max
  else
    count = 0
  end
end

puts max
