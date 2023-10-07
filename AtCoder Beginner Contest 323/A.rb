s = gets.chomp.chars.map(&:to_i)

array = []
s.each.with_index { |x, i| array << x if i.odd? }
puts array.all? { |x| x.even? } ? 'Yes' : 'No'
