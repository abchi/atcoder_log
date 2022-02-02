n = gets.to_i
s = gets.chomp.chars

ans = [n]
s.reverse.each.with_index(1) do |x, i|
  case x
  when 'L'
    ans.push(n - i)
  when 'R'
    ans.prepend(n - i)
  end
end

puts ans.join(' ')
