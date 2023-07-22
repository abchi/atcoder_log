n = gets.to_i
s = gets.chomp.chars

a = false
b = false
c = false

s.each.with_index do |x, i|
  a = true if x == 'A'
  b = true if x == 'B'
  c = true if x == 'C'
  if a && b && c
    puts i + 1
    exit
  end
end
