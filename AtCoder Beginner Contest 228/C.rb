n, k = gets.split.map(&:to_i)
students = [*1..n].zip([] * n).to_h

1.upto(n) do |i|
  students[i] = gets.split.map(&:to_i).sum
end

score = students.values.sort.reverse
target_score = score[k - 1]

result = []
students.each do |k, v|
  if target_score <= (v + 300)
    result << true
  else
    result << false
  end
end

puts result.map { |item| item ? 'Yes' : 'No' }
