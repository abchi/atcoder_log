s, t, x = gets.split.map(&:to_i)

times = []
if s > t
  times << [*s..23]
  times << [*0..(t - 1)]
else
  times << [*s..(t - 1)]
end

times.flatten!

puts times.include?(x) ? 'Yes' : 'No'
