n = gets.to_i
s = gets.chomp

puts s.chars.each_cons(3).map(&:join).count('#.#')
