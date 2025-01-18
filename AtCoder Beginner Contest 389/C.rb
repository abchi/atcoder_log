q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

a = []
s = 0
m = 0

query.each do |x|
  case x[0]
  when 1
    l = x[1]
    s += l
    a << s
  when 2
    shift = a.shift
    m += (shift - m)
  when 3
    k = x[1]
    if k == 1
      puts 0
    else
      puts a[k - 2] - m
    end
  end
end
