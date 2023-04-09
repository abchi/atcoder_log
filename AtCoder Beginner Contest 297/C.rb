h, w = gets.split.map(&:to_i)
s = []

h.times do
  s << gets.chomp
end

s.each do |x|
  puts x.gsub /TT/, 'PC'
end
