t, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = []
b = 0
a.each.with_index do |n, i|
  if (b - n).abs >= x || i == 0
    result << "#{i} #{n}"
    b = n
  end
end

puts result
