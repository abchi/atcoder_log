h, w = gets.chomp.split.map(&:to_i)
s = []
h.times { s << gets.chomp.chars }

lt = nil
ld = nil
rt = nil
rd = nil
s.each.with_index do |x, i|
  index = x.index '#'
  rindex = x.rindex '#'
  unless index.nil?
    lt ||= [i, index]
    ld = [i, index]
  end
  unless rindex.nil?
    rt ||= [i, rindex]
    rd = [i, rindex]
  end
end

a = [[lt[0], rt[0]].min, [lt[1], ld[1]].min]
b = [[lt[0], rt[0]].min, [rt[1], rd[1]].max]
c = [[ld[0], rd[0]].max, [lt[1], ld[1]].min]
d = [[ld[0], rd[0]].max, [rt[1], rd[1]].max]

s[a[0]..c[0]].each do |x|
  if x[a[1]..b[1]].include? '.'
    puts 'No'
    exit
  end
end

puts 'Yes'
