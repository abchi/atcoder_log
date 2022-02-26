a = gets.split.map(&:to_i)

num = a[0]
2.times { num = a[num] }

puts num
