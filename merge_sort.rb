def merge a, b, c
  i = 0
  j = 0
  k = 0

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
  if n > 1
    left_half =arr[0..(n / 2 - 1)]
    right_half =arr[(n / 2)..(n - 1)]
    merge_sort(left_half)
    merge_sort(right_half)
    return merge left_half, right_half, arr
  end
end