n = gets.to_i

0.upto(n) do |x|
  0.upto(n) do |y|
    0.upto(n) do |z|
      puts "#{x} #{y} #{z}" if x + y + z <= n
    end
  end
end
