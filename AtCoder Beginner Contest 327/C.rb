a = []
9.times do
  a << gets.chomp.split.map(&:to_i)
end
num = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts a.all? { |x| x.sort == num } &&
       a.transpose.all? { |x| x.sort == num } &&
       a[0].each_slice(3).zip(a[1].each_slice(3), a[2].each_slice(3)).map(&:flatten).all? { |x| x.sort == num } &&
       a[3].each_slice(3).zip(a[4].each_slice(3), a[5].each_slice(3)).map(&:flatten).all? { |x| x.sort == num } &&
       a[6].each_slice(3).zip(a[7].each_slice(3), a[8].each_slice(3)).map(&:flatten).all? { |x| x.sort == num } ? 'Yes' : 'No'
