t = gets.to_i
as = []
t.times do
  as << gets.split.map(&:to_i)
end

as.each do |a, s|
  ans = if 2 * a <= s
          diff = s - 2 * a
          (diff & a) == 0 ? 'Yes' : 'No'
        else
          'No'
        end
  puts ans
end
