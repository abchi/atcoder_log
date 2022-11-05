n, m = gets.split.map(&:to_i)
a = []
m.times { a << gets.split.map(&:to_i) }

array = Array.new(n) { [] }
a.each do |x|
  c, d = x
  array[c - 1] << d
  array[d - 1] << c
end

array.map! { |item| item.uniq.sort }
array.each do |x|
  size = x.size
  result = if size == 0
             0
           else
             "#{x.size} #{x.join(' ')}"
           end
  puts result
end
