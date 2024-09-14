n = gets.to_i
as = []
n.times do
  line = gets.chomp.split
  as << [line[0].to_i, line[1]]
end

l = nil
r = nil
f = 0
as.each do |a, s|
  case s
  when 'L'
    l ||= a
    f += (a - l).abs
    l = a
  when 'R'
    r ||= a
    f += (a - r).abs
    r = a
  end
end

puts f
