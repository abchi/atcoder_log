n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp

prefix = t =~ /^#{s}/
suffix = t =~ /#{s}$/

result = if prefix && suffix
           0
         elsif prefix && !suffix
           1
         elsif !prefix && suffix
           2
         elsif !prefix && !suffix
           3
         end

puts result
