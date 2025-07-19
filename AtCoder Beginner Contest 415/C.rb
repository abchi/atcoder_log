t = gets.to_i

t.times do
  n = gets.to_i
  s = gets.chomp
  ms = (1 << n) - 1
  v = Array.new(ms + 1) { false }
  q = [0]
  v[0] = true

  until q.empty?
    state = q.shift
    (0...n).each do |i|
      ns = state | (1 << i)
      if ns <= ms && !v[ns] && s[ns - 1] == '0'
        v[ns] = true
        q << ns
      end
    end
  end

  puts v[ms] ? 'Yes' : 'No'
end
