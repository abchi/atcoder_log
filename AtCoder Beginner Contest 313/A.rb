n = gets.to_i
p = gets.split.map(&:to_i)

if n == 1
  puts 0
  exit
end

max = p[1..].max
puts p[0] > max ? 0 : max - p[0] + 1
