n = gets.to_i
s = []
n.times { s << gets.chomp }

result = []
m = s.map(&:size).max
s.each do |x|
  k = (m - x.size) / 2
  d = '.' * k
  result << "#{d}#{x}#{d}"
end

puts result
