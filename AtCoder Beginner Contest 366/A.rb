n, t, a = gets.chomp.split.map(&:to_i)

puts (t - a).abs >= n - t - a ? 'Yes' : 'No'
