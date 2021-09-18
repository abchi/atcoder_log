x = gets.chomp.chars
n = gets.to_i

s = {}
n.times do
  line = gets.chomp
  s[line] = line
end

x.each.with_index do |x, i|
  s.map { |k, v| v.gsub!(x, "|#{sprintf('%02d',i)}|") }
end

puts s.sort_by { |k, v| v }.to_h.keys
