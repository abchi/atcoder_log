n = gets.chomp.chars.map(&:to_i)

if n.size > 1
  n[0...-1].each.with_index do |x, i|
    unless x > n[i + 1]
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
