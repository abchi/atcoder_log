h, w = gets.split.map(&:to_i)
a = []
h.times do
  a << gets.split.map(&:to_i)
end

a.transpose.each do |x|
  puts x.join(' ')
end
