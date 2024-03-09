n = gets.to_i
a = gets.chomp.split.map(&:to_i)
m = gets.to_i
b = gets.chomp.split.map(&:to_i)
l = gets.to_i
c = gets.chomp.split.map(&:to_i)
q = gets.to_i
x = gets.chomp.split.map(&:to_i)

product_set = a.product(b, c).map(&:sum).to_set
x.each do |n|
  puts product_set.include?(n) ? 'Yes' : 'No'
end
