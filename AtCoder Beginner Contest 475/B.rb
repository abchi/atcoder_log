n = gets.to_i
a = gets.chomp.split.map(&:to_i)

coin = [0, 0, 0]
a.each do |x|
  ((1000 * (x / 1000.0).ceil) - x).to_s.reverse.chars.each_with_index do |b, i|
    coin[i] += b.to_i
  end
end

puts coin.join ' '
