n, m = gets.chomp.split.map(&:to_i)
s = []
n.times { s << gets.chomp }

s.each { _1.tr!('o', '1') }
s.each { _1.tr!('x', '0') }
s.map! { _1.to_i 2 }

1.upto(n) do |i|
  s.combination(i).each do |x|
    b = 0
    x.each do |y|
      b |= y
      if b.to_s(2) == '1' * m
        puts i
        exit
      end
    end
  end
end
