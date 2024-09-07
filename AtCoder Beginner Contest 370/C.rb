s = gets.chomp
t = gets.chomp
x = []

while s != t
  s.dup.chars.each.with_index do |c, i|
    if c != t[i] && c > t[i]
      s[i] = t[i]
      x << s.dup
      break
    elsif s[i + 1..] == t[i + 1..]
      s[i] = t[i]
      x << s.dup
      break
    end
  end
end

puts x.size
puts x
