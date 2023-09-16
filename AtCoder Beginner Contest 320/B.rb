s = gets.chomp

s.size.downto(1).each do |i|
  s.chars.each_cons(i).to_a.map(&:join).each do |x|
    if x == x.reverse
      puts x.size
      exit
    end
  end
end
