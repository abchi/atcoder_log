x, y = gets.chomp.split
OS = ['Ocelot', 'Serval', 'Lynx']

puts OS.index(x) >= OS.index(y) ? 'Yes' : 'No'
