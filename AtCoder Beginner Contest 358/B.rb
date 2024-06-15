n, a = gets.chomp.split.map(&:to_i)
t = gets.chomp.split.map(&:to_i)

time = 0
t.each do |x|
  time = x if time <= x
  time += a
  puts time
end
