def bubble_sort(array)
  # sorted = false
  k = array.size
  sorted = false

  while sorted == false
    was_sorted = false

    for n in 1..k - 1 do
      left = array[n - 1]
      right = array[n]
      next unless left > right

      array[n - 1] = right
      array[n] = left
      was_sorted = true
    end

    sorted = true if was_sorted == false
    k -= 1
  end

  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([32, 5, 65, 43, 1, 7, 110, 23])