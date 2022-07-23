n = gets.to_i
a = []
n.times do
  a << gets.chomp.chars
end

transpose = a.transpose

a.each.with_index do |x, i|
  modified_a = transpose[i]
  modified_a.map! { |item| item == 'W' ? '@' : item }
  modified_a.map! { |item| item == 'L' ? 'W' : item }
  modified_a.map! { |item| item == '@' ? 'L' : item }
  if x != modified_a
    puts 'incorrect'
    exit
  end
end

puts 'correct'
