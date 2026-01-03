n = gets.to_i
a = Array.new(n + 1) { 0 }

limit = Math.sqrt(n).to_i
1.upto(limit) do |x|
  x2 = x * x
  (x + 1).upto(limit) do |y|
    s = x2 + y * y
    break if s > n
    a[s] += 1
  end
end

result = []
(1..n).each { result << _1 if a[_1] == 1 }

puts result.size
puts result.join ' '
