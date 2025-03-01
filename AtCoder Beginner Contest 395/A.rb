n = gets.to_i
a = gets.split.map(&:to_i)

num = 0
a.each do |x|
  if num < x
    num = x
  else
    puts 'No'
    exit
  end
end

puts 'Yes'
