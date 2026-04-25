h, w = gets.chomp.split.map(&:to_i)
s = []
h.times { s << gets.chomp.chars }

count = 0
h.times do |h1|
  (h1...h).each do |h2|
    w.times do |w1|
      (w1...w).each do |w2|

        flg = true
        (h1..h2).each do |i|
          (w1..w2).each do |j|
            ii = h1 + h2 - i
            jj = w1 + w2 - j
            flg = false if s[i][j] != s[ii][jj]
          end
        end

        count += 1 if flg
      end
    end
  end
end

puts count
