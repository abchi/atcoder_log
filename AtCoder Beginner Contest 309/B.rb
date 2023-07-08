n = gets.to_i
a = []
n.times do
  a << gets.chomp.chars
end

array = []
array << a[0]
array << a.transpose[-1][1..-2]
array << a[-1].reverse
array << a.transpose[0][1..-2].reverse
array.flatten!
array.rotate! -1

a[0] = array.slice!(0...n)
a = a.transpose
a[-1][1..] = array.slice!(0...n - 1)
a = a.transpose
a[-1][0..-2] = array.slice!(0...n - 1).reverse
a = a.transpose
a[0][1..-2] = array.slice!(0..).reverse
a = a.transpose

a.each do |x|
  puts x.join
end
