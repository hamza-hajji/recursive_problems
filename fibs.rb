def fibs n
  return [1] if n == 1
  f = [1, 1]
  2.upto(n - 1) do |i|
    f[i] = f[i - 1] + f[i - 2]
  end
  f
end