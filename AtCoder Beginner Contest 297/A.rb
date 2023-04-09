n, d = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

x = t.shift
t.each do |y|
  if y - x <= d
    puts y
    exit
  end
  x = y
end

puts -1
