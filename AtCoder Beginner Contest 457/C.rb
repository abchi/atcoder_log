n, k = gets.chomp.split.map(&:to_i)
ln = []
n.times { ln << gets.chomp.split.map(&:to_i) }
c = gets.chomp.split.map(&:to_i)

pos = 0
n.times do |i|
  li = ln[i][0]
  s = li * c[i]

  if k <= pos + s
    index = (k - pos - 1) % li
    puts ln[i][1..][index]
    exit
  end

  pos += s
end
