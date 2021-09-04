n = gets.to_i
p = gets.split.map(&:to_i)
q = Array.new(n) { nil }

(1..n).each do |i|
  index = p[i-1] - 1
  q[index] = i
end

puts q.join(' ')
