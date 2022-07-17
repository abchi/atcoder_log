s = gets.chomp.chars

groups = s.group_by(&:itself).map { |k, v| [k, v.size] }.to_h
groups = groups.sort_by { |a, b| b }

puts groups.first[1] == 1 ? groups.first[0] : -1
