x, y = gets.split.map(&:to_i)

rps = [0, 1, 2]
rps.delete(x)
rps.delete(y)

if rps.count == 1
  puts rps
else
  puts x
end
