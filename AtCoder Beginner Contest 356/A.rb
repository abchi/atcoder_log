n, l, r = gets.chomp.split.map(&:to_i)

a = (1..n).to_a
puts (a[0...l - 1] + a[l - 1..r - 1].reverse + a[r..]).join(' ')
