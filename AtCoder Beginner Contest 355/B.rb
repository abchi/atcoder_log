n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = (a + b).sort

count = 0
c.each do |x|
  if a.include? x
    count += 1
  else
    count = 0
  end
  if count == 2
    puts 'Yes'
    exit
  end
end

puts 'No'
