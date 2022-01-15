n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
xk = []
q.times do
  xk << gets.split.map(&:to_i)
end

hash = {}
a.each.with_index { |x, i| hash[x].nil? ? hash[x] = [i] : hash[x] << i }

ans = []
xk.each do |x, k|
  index = hash[x]
  index = index&.[](k - 1)
  ans << (index.nil? ? -1 : index + 1)
end

puts ans
