n = gets.to_i
s = gets.chomp
q = gets.to_i
txc = []
txc1 = []
txc23 = []
q.times do
  line = gets.chomp.split
  txc << [line[0].to_i, line[1].to_i, line[2]]
  if line[0] == '1'
    txc1 << [line[0].to_i, line[1].to_i, line[2]]
  else
    txc23 << [line[0].to_i, line[1].to_i, line[2]]
  end
end

txc1.each { |t, x, c| s[x - 1] = c }
txc23[-1][0] == 2 ? s.downcase! : s.upcase! unless txc23.empty?
index = txc.reverse.find_index { |x| x[0] == 2 || x[0] == 3 }
txc.reverse[0...index].reverse.each { |t, x, c| s[x - 1] = c }

puts s
