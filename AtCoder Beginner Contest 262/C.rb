n = gets.to_i
a = gets.split.map(&:to_i)

array = []
count = 0
a.each.with_index(1) do |x, i|
  if x == i
    array << true
  else
    count += 1 if a[x - 1] == i
  end
end

count /= 2
count += array.select { |item| item == true }.combination(2).size

puts count
