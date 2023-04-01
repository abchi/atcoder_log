s = []
8.times do
  s << gets.chomp.chars
end

alphabet = %w/a b c d e f g h/
s.reverse.each.with_index(1) do |x, i|
  index = x.index '*'
  unless index.nil?
    puts "#{alphabet[index]}#{i}"
    exit
  end
end
