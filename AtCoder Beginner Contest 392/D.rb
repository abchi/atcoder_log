n = gets.to_i
array = []
n.times do
  line = gets.chomp.split.map(&:to_i)
  k = line.shift
  a = line
  array << { dice: k, side: a.group_by(&:itself).transform_values(&:size) }
end

max = 0
array.combination(2).each do |a, b|
  count = 0
  a[:side].each do |k, v|
    count += b[:side][k].to_i * v
  end
  max = [max, Rational(count, a[:dice] * b[:dice]).to_f].max
end

puts max
