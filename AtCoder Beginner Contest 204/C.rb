n, m = gets.split.map(&:to_i)
@ab = [*1..n].zip([*1..n].each_slice(1)).to_h
m.times do
  a, b = gets.split.map(&:to_i)
  @ab[a] << b
end

def dfs(v)
  return if @flg[v-1]
  @flg[v-1] = true
  @ab[v].each do |vv|
    dfs(vv)
  end
end

count = 0
1.upto(n) do |i|
  @flg = [false] * n
  dfs(i)
  count += @flg.count(true)
end

puts count
