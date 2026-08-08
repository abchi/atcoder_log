n, q = gets.chomp.split.map(&:to_i)
p = [0] + gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

array = Array.new(n + 1)
1.upto(n) { array[p[_1]] = _1 }

r = false
query.each do |t, x, y|
  case t
  when 1
    if !r
      a = p[x]
      b = p[y]

      p[x], p[y] = b, a
      array[a], array[b] = y, x
    else
      a = array[x]
      b = array[y]

      array[x], array[y] = b, a
      p[a], p[b] = y, x
    end
  when 2
    r = !r
  end
end

puts r ? array[1..n].join(' ') : p[1..n].join(' ')
