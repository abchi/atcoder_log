n, k = gets.split.map(&:to_i)
s = []
n.times do
  s << gets.chomp
end

puts s[0...k].sort
