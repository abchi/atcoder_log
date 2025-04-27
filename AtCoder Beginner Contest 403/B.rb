t = gets.chomp
u = gets.chomp

t.chars.each_cons(u.size).each do |x|
  regex = x.join.gsub '?', '.'
  unless (u =~ /#{regex}/).nil?
    puts 'Yes'
    exit
  end
end

puts 'No'
