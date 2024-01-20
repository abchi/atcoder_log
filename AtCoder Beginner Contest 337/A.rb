n = gets.to_i
xy = []
n.times { xy << gets.chomp.split.map(&:to_i) }

score = xy.transpose.map(&:sum)
result = if score[0] > score[1]
           'Takahashi'
         elsif score[0] < score[1]
           'Aoki'
         else
           'Draw'
         end

puts result
