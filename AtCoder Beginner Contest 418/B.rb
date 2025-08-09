s = gets.chomp

max = 0
3.upto(s.size) do |i|
  s.chars.each_cons(i) do |ss|
    t = ss.join
    if t[0] == 't' && t[-1] == 't'
      x = t.count 't'
      result = Rational x - 2, t.size - 2
      max = [max, result].max
    end
  end
end

puts max.to_f
