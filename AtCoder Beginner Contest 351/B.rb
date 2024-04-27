n = gets.to_i
a = []
n.times { a << gets.chomp.chars }
b = []
n.times { b << gets.chomp.chars }

a.each.with_index do |x, i|
  x.each.with_index do |y, j|
    if y != b[i][j]
      puts "#{i + 1} #{j + 1}"
      exit
    end
  end
end
