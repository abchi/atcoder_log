s = gets.chomp

t = s.chars
lo = -1
i = 0
while i < s.size
  if s[i] == '.'
    f = true
    if lo != -1
      between = s[(lo + 1)...i]
      f = between.include? '#'
    end
    if f
      t[i] = 'o'
      lo = i
    end
  end
  i += 1
end

puts t.join
