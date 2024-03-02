n = gets.to_i

Math.cbrt(n).to_i.downto(0) do |i|
  num = i ** 3
  if num.to_s == num.to_s.reverse
    puts num
    exit
  end
end
