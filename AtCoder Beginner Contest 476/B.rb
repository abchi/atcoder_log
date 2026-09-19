n = gets.to_i
s = gets.chomp
t = gets.chomp

n.times do |i|
  if t[i] != '*'
    if s[i] != t[i]
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
