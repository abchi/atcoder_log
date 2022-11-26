h, w = gets.split.map(&:to_i)
s = []
t = []

h.times do
  s << gets.chomp.chars
end

h.times do
  t << gets.chomp.chars
end

puts s.transpose.sort == t.transpose.sort ? 'Yes' : 'No'
