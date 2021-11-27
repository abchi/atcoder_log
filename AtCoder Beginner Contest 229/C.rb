n, w = gets.split.map(&:to_i)

ab = []
n.times do
  ab << gets.split.map(&:to_i)
end

ab.sort!
ab.reverse!

deliciousness = 0
ab.each do |a, b|
  break if w == 0
  if w >= b
    deliciousness += (a * b)
    w -= b
  else
    deliciousness += (a * w)
    w = 0
  end
end

puts deliciousness
