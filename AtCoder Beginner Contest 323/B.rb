n = gets.to_i
s = []
n.times do
  s << gets.chomp.chars
end

player = {}
s.each.with_index(1) do |x, i|
  player[i] = x.count 'o'
end

puts player.sort_by { |k, v| [-v, k] }.to_h.keys.join ' '
