h, w = gets.chomp.split.map(&:to_i)
si, sj = gets.chomp.split.map(&:to_i)
c = []
h.times { c << gets.chomp.chars }
x = gets.chomp.chars

si -= 1
sj -= 1
x.each do |m|
  case m
  when 'L'
    sj -= 1 if sj - 1 >= 0 && c[si][sj - 1] == '.'
  when 'R'
    sj += 1 if sj + 1 < w && c[si][sj + 1] == '.'
  when 'U'
    si -= 1 if si - 1 >= 0 && c[si - 1][sj] == '.'
  when 'D'
    si += 1 if si + 1 < h && c[si + 1][sj] == '.'
  end
end

puts "#{si + 1} #{sj + 1}"
