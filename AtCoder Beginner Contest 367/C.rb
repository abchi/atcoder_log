n, k = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)

(1..r[0]).to_a.product(*r[1..].map { (1.._1).to_a }).each do |x|
  puts x.join ' ' if x.sum % k == 0
end
