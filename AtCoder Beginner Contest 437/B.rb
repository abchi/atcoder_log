h, w, n = gets.chomp.split.map(&:to_i)
a = []
b = []

h.times { a << gets.chomp.split.map(&:to_i) }
n.times { b << gets.to_i }

max = 0
a.each do |x|
  count = b.count { x.include? _1 }
  max = [count, max].max
end

puts max
