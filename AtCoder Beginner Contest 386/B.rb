s = gets.chomp

count = 0
zero = false
s.chars.each do |x|
  if zero && x == '0'
    zero = false
  elsif x == '0'
    zero = true
    count += 1
  else
    zero = false
    count += 1
  end
end

puts count
