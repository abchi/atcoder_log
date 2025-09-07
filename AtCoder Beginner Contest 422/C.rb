t = gets.to_i
testcase = []
t.times { testcase << gets.chomp.split.map(&:to_i) }

testcase.each do |a, b, c|
  puts [a, c, (a + b + c) / 3].min
end
