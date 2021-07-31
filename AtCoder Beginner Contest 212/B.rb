x = gets.chomp.chars

if x.uniq.count == 1
  puts 'Weak'
  exit
end

number = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
count = 0
x.each.with_index do |y, i|
  index = number.index(y)
  if !index.nil? && x[i + 1] == number[index + 1]
    count += 1
  end
end

puts count == 3 ? 'Weak' : 'Strong'
