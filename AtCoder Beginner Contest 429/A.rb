n, m = gets.chomp.split.map(&:to_i)

1.upto(n) do |i|
  puts i <= m ? 'OK' : 'Too Many Requests'
end
