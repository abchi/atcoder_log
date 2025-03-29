n = gets.to_i
p = gets.chomp.split.map(&:to_i)

r = 1
result = Array.new(n)
score = p.sort.uniq.reverse
score.each do |x|
  k = 0
  p.each.with_index do |y, i|
    if y == x
      result[i] = r
      k += 1
    end
  end
  r += k
end

puts result
