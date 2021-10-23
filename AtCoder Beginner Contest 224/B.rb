h, w = gets.split.map(&:to_i)
a = []
h.times do
  a << gets.split.map(&:to_i)
end

h_pattern = (0...h).to_a.combination(2).to_a
w_pattern = (0...w).to_a.combination(2).to_a

result = []
h_pattern.each do |x|
  w_pattern.each do |y|
    i1 = x[0]
    i2 = x[1]
    j1 = y[0]
    j2 = y[1]
    left = a[i1][j1] + a[i2][j2]
    right = a[i2][j1] + a[i1][j2]
    result << if left <= right
                true
              else
                false
              end
  end
end

puts result.include?(false) ? 'No' : 'Yes'
