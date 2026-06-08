def merge_sort(array)
  if array.length <= 1
    return array
  else
    mid = array.length / 2
    first_half = array[...mid]
    second_half = array[mid..]

    sorted_first_half = merge_sort(first_half)
    sorted_second_half = merge_sort(second_half)
    return merge(sorted_first_half, sorted_second_half)
  end
end

def merge(arr1, arr2)
  merged_arr = []
  i, j = 0, 0

  while i < arr1.size && j < arr2.size
      if arr1[i] < arr2[j]
        merged_arr << arr1[i]
        i += 1
      else
        merged_arr << arr2[j]
        j += 1
      end
  end

  merged_arr + arr1[i..] + arr2[j..]
end
