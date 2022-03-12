n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

one = 0
two = 0

n.times do |i|
  if a[i] == b[i]
    one += 1
  elsif b.include?(a[i])
    two += 1
  end
end

puts one
puts two
