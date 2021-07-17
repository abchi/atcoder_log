n = gets.to_i
s = gets.chomp

index = s.index('1')
puts index.even? ? 'Takahashi' : 'Aoki'
