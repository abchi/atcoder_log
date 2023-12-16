s1, s2 = gets.chomp.chars
t1, t2 = gets.chomp.chars

point = %w[A B C D E]

index1 = point.index s1
index2 = point.index s2
index3 = point.index t1
index4 = point.index t2

a = (index1 - index2).abs
b = (index3 - index4).abs
a = 5 - a if a >= 3
b = 5 - b if b >= 3

puts a == b ? 'Yes' : 'No'
