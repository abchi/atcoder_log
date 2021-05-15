s = gets.chomp

if s.chars.count('o') > 4
  puts 0
  exit
end

number = []
included_number = []
s.chars.each.with_index do |s, i|
  number << i if s == 'o' || s == '?'
  included_number << i if s == 'o'
end

puts number.repeated_permutation(4).to_a.map { |x| (included_number - x).size == 0 }.count(true)
