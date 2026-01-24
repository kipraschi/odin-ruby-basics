def bubble_sort(arr)
  swapped = true
  while swapped 
    swapped = false
    arr.each_with_index do |element, index|
      if arr[index + 1] && element > arr[index + 1]
        swapped = true
        arr[index] = arr[index + 1]
        arr[index + 1] = element
      end
    end
  end
  arr
end