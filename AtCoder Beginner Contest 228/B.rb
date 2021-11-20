n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

member = Array.new(n) { false }

index = x - 1
member[index] = true
loop do
  index = a[index] - 1
  break if member[index] == true
  member[index] = true
end

puts member.count(true)
