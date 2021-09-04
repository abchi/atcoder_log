s1 = gets.chomp
s2 = gets.chomp
s3 = gets.chomp

contest = %w[ABC ARC AGC AHC]
contest.delete(s1)
contest.delete(s2)
contest.delete(s3)

puts contest
