n, q = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

box = (1..n).zip(Array.new(n) { 0 }).to_h
result = []
x.each do |y|
  if y == 0
    index = box.sort_by { |k, v| [v, k] }[0][0]
    box[index] += 1
    result << index
  else
    box[y] += 1
    result << y
  end
end

puts result.join ' '
