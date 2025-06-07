n = gets.to_i
a = gets.chomp.split.map(&:to_i)

n.downto(0) do |i|
  count = a.count { _1 >= i }
  if count >= i
    puts i
    exit
  end
end
