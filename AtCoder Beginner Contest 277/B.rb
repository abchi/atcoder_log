n = gets.to_i
s = []
n.times do
  s << gets.chomp.chars
end

result = if s.size == s.uniq.size
           s.all? { |x, y| %w/H D C S/.include?(x) && %w/A 2 3 4 5 6 7 8 9 T J Q K/.include?(y) }
         else
           false
         end

puts result ? 'Yes' : 'No'
