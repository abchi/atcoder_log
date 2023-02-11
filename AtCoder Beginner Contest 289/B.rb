n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

number = (1..n).to_a
number2 = number - a

number2.each do |x|
  number.map! { |item| item == x ? '#' : item }
end

array = []
result = []
number.each.with_index do |x, i|
  if x == '#'
    result << [number2.shift, array.reverse].flatten
    array.clear
  else
    array << x
    result << array if i == number.size - 1
  end
end

puts result.flatten.join(' ')
