n = gets.to_i
ab = []
n.times { ab << gets.chomp.split.map(&:to_i) }

diff = []
ab.each { |a, b| diff << (a - b).abs }

di = diff.index(diff.max)
height = 0
ab.each.with_index do |ab, i|
  a, b = ab
  height += i != di ? a : b
end

puts height
