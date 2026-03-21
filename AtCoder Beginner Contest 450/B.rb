n = gets.to_i
c = Array.new(n) { Array.new(n) }

(0...n - 1).each do |i|
  row = gets.chomp.split.map(&:to_i)
  (i + 1...n).each do |j|
    c[i][j] = row[j - i - 1]
  end
end
result = (0...n).to_a.combination(3).any? { |a, b, d| c[a][d] > c[a][b] + c[b][d] }

puts result ? 'Yes' : 'No'
