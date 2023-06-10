line = gets.chomp.split
line.sort!
p, q = line

alphabet = %w/A B C D E F G/
distance = [3, 1, 4, 1, 5, 9]

index_p = alphabet.index p
index_q = alphabet.index q

puts distance[index_p .. index_q - 1].sum
