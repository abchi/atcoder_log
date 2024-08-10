n = gets.to_i
s = []
n.times { s << gets.chomp.chars }

max = s.map(&:size).max
s.map! { _1 << ('*' * (_1.size - max).abs).chars }
s.map!(&:flatten)
s = s.transpose
s.map!(&:reverse)
s.map!(&:join)
s.map! { _1.gsub! /[*]*$/, '' }

s.each { puts _1 }
