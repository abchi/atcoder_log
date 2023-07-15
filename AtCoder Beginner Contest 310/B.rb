n, m = gets.split.map(&:to_i)
pcf = []
n.times do
  pcf << gets.split.map(&:to_i)
end

result = []
pcf.each.with_index do |(p, c, *f), i|
  result << pcf.select { |x, y, *z| p >= x && (f - z).empty? && (p > x || !(z - f).empty?) }
end

result.flatten!
puts result.empty? ? 'No' : 'Yes'
