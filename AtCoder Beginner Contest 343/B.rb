n = gets.to_i
a = []
n.times { a << gets.chomp.split.map(&:to_i) }

a.each do |x|
  puts x.map.with_index { |xx, i| i + 1 if xx == 1 }.compact.join ' '
end
