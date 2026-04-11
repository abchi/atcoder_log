n = gets.to_i
l = gets.chomp.split.map(&:to_i)

max_cross = 0
limit = 1 << n

limit.times do |mask|
  pos = 0.5
  cross = 0

  i = 0
  while i < n
    d = (mask[i] == 1 ? l[i] : -l[i])
    new_pos = pos + d
    cross += 1 if pos * new_pos < 0
    pos = new_pos
    i += 1
  end

  max_cross = [cross, max_cross].max
end

puts max_cross
