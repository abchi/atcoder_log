s = gets.chomp

result = []
s.chars.each do |c|
  result << c if c =~ /[0-9]/
end

puts result.join
