s = gets.chomp

index = s.chars.each_with_index.select { |c, _i| c == '#' }.map { |_, i| i + 1 }
result = index.each_slice(2).to_a

puts result.map { _1.join(',') }
