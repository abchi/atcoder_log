n = gets.to_i
a = gets.chomp.split.map(&:to_i)

nn = nil
count = 0
a.each do |x|
  if nn == x
    count += 1
  else
    count = 0
  end
  if count >= 2
    puts 'Yes'
    exit
  end
  nn = x
end

puts 'No'
