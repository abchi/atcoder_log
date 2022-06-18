n = gets.to_i
a = gets.split.map(&:to_i)

p = 0
array = []

a.each do |x|
  array << 1
  (x - 1).times do
    array << 0
  end
  if array.size >= 4
    p += array[...-3].count(1)
    array = array[-3..]
  end
end

puts p
