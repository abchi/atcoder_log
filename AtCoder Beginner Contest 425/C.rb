n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

sum = [0]
a.each { sum << sum[-1] + _1 }

offset = 0
query.each do |x, y, z|
  case x
  when 1
    offset = (offset + y) % n
  when 2
    l = (y - 1 + offset) % n
    r = (z - 1 + offset) % n

    if l <= r
      puts sum[r + 1] - sum[l]
    else
      puts (sum[n] - sum[l]) + sum[r + 1]
    end
  end
end
