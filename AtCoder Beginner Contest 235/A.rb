line = gets.chomp
abc = line
bca = line[1] + line[2] + line[0]
cab = line[2] + line[0] + line[1]

puts abc.to_i + bca.to_i + cab.to_i
