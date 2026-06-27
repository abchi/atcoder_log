t = gets.to_i

t.times do
  n = gets.to_i
  s = gets.chomp.chars
  x = gets.chomp.split.map(&:to_i)
  y = gets.chomp.split.map(&:to_i)

  dp1 = 0
  dp2 = -x[0]

  prev1 = s[0]
  prev2 = (s[0] == 'S' ? 'R' : 'S')

  (1...n).each do |i|
    cur1 = s[i]
    cur2 = (s[i] == 'S' ? 'R' : 'S')

    ndp1 = -Float::INFINITY
    ndp2 = -Float::INFINITY

    [[dp1, prev1], [dp2, prev2]].each do |dpv, pv|
      gain = (pv == 'R' && cur1 == 'S') ? y[i - 1] : 0
      ndp1 = [ndp1, dpv + gain].max
    end

    [[dp1, prev1], [dp2, prev2]].each do |dpv, pv|
      gain = (pv == 'R' && cur2 == 'S') ? y[i - 1] : 0
      ndp2 = [ndp2, dpv + gain - x[i]].max
    end

    dp1, dp2 = ndp1, ndp2
    prev1, prev2 = cur1, cur2
  end

  puts [dp1, dp2].max
end
