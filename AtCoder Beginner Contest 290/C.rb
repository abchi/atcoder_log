n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

aa = a.uniq.sort[0...k]
num = (0..k).to_a
puts (num - aa).min
