n = gets.to_i
a = []
n.times { a << gets.chomp.split.map(&:to_i) }

i = 1
1.upto(n) do |j|
  i = if i >= j
             a[i - 1][j - 1]
           else
             a[j - 1][i - 1]
           end
end

puts i
