n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp

z = s.split '1'
o = s.split '0'

z.reject!(&:empty?)
o.reject!(&:empty?)

o[k - 2] += o[k - 1]
o.delete_at(k - 1)

ss = s.squeeze.chars
index = ss.each_index.select { ss[_1] == '1' }
ss.delete_at(index[k - 1])

result = []
ss.each do |x|
  result << case x
            when '0'
              z.shift
            when '1'
              o.shift
            end
end

puts result.join
