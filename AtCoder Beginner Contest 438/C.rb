n = gets.to_i
a = gets.chomp.split.map(&:to_i)

s = []
a.each do |x|
  if s.empty? || s[-1][0] != x
    s << [x, 1]
  else
    s[-1][1] += 1
  end
  s.pop if s[-1][1] == 4
end

puts s.sum { |_, c| c }
