q = gets.to_i
query = []
q.times { query << gets.chomp }

id = 1
account = {}
query.each do |x|
  if account.key? x
    puts account[x]
  else
    puts id
    account[x] = id
    id += 1
  end
end
