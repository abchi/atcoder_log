n = gets.to_i
t = gets.chomp
a = gets.chomp

n.times do |i|
  if t[i] == 'o' && a[i] == 'o'
    puts 'Yes'
    exit
  end
end

puts 'No'
