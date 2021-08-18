n = gets.to_i
s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

(0...n * 2).each do |i|
  t[(i+1)%n] = [t[(i+1)%n], t[i%n] + s[i%n]].min
end

puts t
