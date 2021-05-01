s = gets.chomp
t = []
reversed = false

s.chars.each do |x|
  if x == 'R'
    reversed = !reversed
  else
    if reversed
      t[0] == x ? t.shift : t.unshift(x)
    else
      t[-1] == x ? t.pop : t.push(x)
    end
  end
end

t.reverse! if reversed
puts t.join
