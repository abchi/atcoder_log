n = gets.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

result = []
hq = (1..n).zip(q).to_h
q.zip(p).sort.transpose[-1].each { result << hq[_1] }

puts result.join ' '
