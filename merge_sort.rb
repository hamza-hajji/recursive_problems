def merge a, b
  i = 0
  j = 0
  k = 0
  c = []

  until i == a.length or j == b.length
    if a[i] < b[j]
      c[k] = a[i]
      i += 1
    else
      c[k] = b[j]
      j += 1
    end
    k += 1
  end
  c.concat (i == a.length ? b[j..-1] : a[i..-1])
end

def merge_sort arr
  n = arr.length
  return arr if n < 2
  left_half =arr[0..(n / 2 - 1)]
  right_half =arr[(n / 2)..(n - 1)]
  left_half = merge_sort(left_half)
  right_half = merge_sort(right_half)
  merge left_half, right_half
end