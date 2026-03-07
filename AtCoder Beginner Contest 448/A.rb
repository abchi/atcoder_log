n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.each do |b|
  if b < x
    x = b
    puts 1
  else
    puts 0
  end
end
