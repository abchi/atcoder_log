n, d = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

result = []
n.times do |i|
  a = x[0...i]
  a += x[i + 1..]
  a.map! { (_1 - x[i]).abs }
  result << i + 1 if a.all? { _1 >= d }
end

puts result.size
puts result.join ' '
