n, q = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

pigeon = (1..n).zip((1..n).to_a).to_h
nest = (1..n).zip(Array.new(n) { 1 }).to_h

count = 0
query.each do |a, p, h|
  case a
  when 1
    nest[pigeon[p]] -= 1
    count -= 1 if nest[pigeon[p]] == 1
    nest[h] += 1
    count += 1 if nest[h] == 2
    pigeon[p] = h
  when 2
    puts count
  end
end
