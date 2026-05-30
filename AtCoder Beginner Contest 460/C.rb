n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

a.sort!
b.sort!

a_index = 0
b_index = 0
count = 0
while a_index < n && b_index < m
  if b[b_index] <= a[a_index] * 2
    a_index += 1
    b_index += 1
    count += 1
  else
    a_index += 1
  end
end

puts count
