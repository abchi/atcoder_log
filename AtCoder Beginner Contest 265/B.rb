n, m, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
xy = {}
m.times do
  line = gets.split.map(&:to_i)
  xy[line[0]] = line[1]
end

result = 'Yes'
a.each.with_index(2) do |aa, i|
  if t - aa > 0
    t -= aa
    t += xy[i] if xy[i]
  else
    result = 'No'
    break
  end
end

puts result
