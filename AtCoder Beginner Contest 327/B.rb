b = gets.to_i

i = 1
loop do
  if b == i ** i
    puts i
    break
  elsif b < i ** i
    puts -1
    break
  end
  i += 1
end
