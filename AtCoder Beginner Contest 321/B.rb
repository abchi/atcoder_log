n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

101.times do |i|
  aa = a.dup
  aa << i
  aa.sort!
  if aa[1...-1].sum >= x
    puts i
    exit
  end
end

puts -1
