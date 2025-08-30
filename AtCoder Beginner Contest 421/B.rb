x, y = gets.chomp.split.map(&:to_i)

a = {}
a[1] = x
a[2] = y
3.upto(10) do |i|
  a[i] = (a[i - 1] + a[i - 2]).to_s.reverse.to_i
end

puts a[10]
