m = gets.to_i
d = gets.split.map(&:to_i)
day = (d.sum + 1) / 2

d.each.with_index do |x, i|
  if day - x <= 0
    puts "#{i + 1} #{day}"
    break
  end
  day -= x
end
