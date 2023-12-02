n, s, m, l = gets.chomp.split.map(&:to_i)

result = []
((n / 6.0).ceil + 1).times do |i|
  ((n / 8.0).ceil + 1).times do |j|
    ((n / 12.0).ceil + 1).times do |k|
      result << (i * s + j * m + k * l) if (i * 6 + j * 8 + k * 12) >= n
    end
  end
end

puts result.min
