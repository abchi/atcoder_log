n, k = gets.chomp.split.map(&:to_i)

def search(i, r, n, a)
  if i == n
    if r % n == 0
      a[n - 1] = r / n
      puts a.join ' '
    end
    return
  end

  x = 0
  while i * x <= r
    a[i - 1] = x
    search(i + 1, r - i * x, n, a)
    x += 1
  end
end

a = Array.new(n)
search(1, k, n, a)
