n = gets.to_i
ab = []
n.times do
  ab << gets.split.map(&:to_i)
end

members = (1..n).zip(Array.new(n) { nil }).to_h
ab.each.with_index(1) do |(a, b), i|
  members[i] = Rational a, (a + b)
end

puts members.sort_by { |k, v| [-v, k] }.transpose.first.join ' '
