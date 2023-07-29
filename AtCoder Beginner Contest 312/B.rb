n, m = gets.split.map(&:to_i)
s = []
n.times do
  s << gets.chomp.chars
end

(n - 8).times do |i|
  (m - 8).times do |j|
    result = []
    result << [s[i][j..j + 2], s[i + 1][j..j + 2], s[i + 2][j..j + 2]].flatten.all? { |x| x == '#' }
    result << [s[i + 6][j + 6..j + 6 + 2], s[i + 7][j + 6..j + 6 + 2], s[i + 8][j + 6..j + 6 + 2]].flatten.all? { |x| x == '#' }

    result << s[i + 3][j..j + 3].flatten.all? { |x| x == '.' }
    result << [s[i][j + 3], s[i + 1][j + 3], s[i + 2][j + 3]].flatten.all? { |x| x == '.' }
    result << s[i + 5][j + 5..j + 5 + 3].flatten.all? { |x| x == '.' }
    result << [s[i + 6][j + 5], s[i + 6 + 1][j + 5], s[i + 6 + 2][j + 5]].flatten.all? { |x| x == '.' }
    result << s[i + 3][j..j + 2].all? { |x| x == '.' }
    result << [s[i][j + 3], s[i + 1][j + 3], s[i + 2][j + 3]].flatten.all? { |x| x == '.' }

    puts "#{i + 1} #{j + 1}" if result.all?
  end
end
