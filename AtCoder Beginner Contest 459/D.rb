t = gets.to_i
c = []
t.times { c << gets.chomp }

c.each do |x|
  size = x.size

  count = Array.new(26) { 0 }
  x.each_byte { count[_1 - 97] += 1 }

  max = count.max
  if max > (size + 1) / 2
    puts 'No'
    next
  end

  puts 'Yes'

  pairs = []
  26.times { pairs << [_1, count[_1]] if count[_1] > 0 }
  pairs.sort_by! { |i, f| -f }

  result = ' ' * size
  index = 0

  pairs.each do |i, f|
    ch = (i + 97).chr
    f.times do
      index = 1 if index >= size
      result[index] = ch
      index += 2
    end
  end

  puts result
end
