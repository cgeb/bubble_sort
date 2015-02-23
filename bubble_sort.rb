def bubble_sort(array)
    swapped = true
    while swapped
      swapped = false
      for i in 1..array.length - 1
        if array[i-1] > array[i]
          array[i-1], array[i] = array[i], array[i-1]
          swapped = true
        end
      end
    end
    array
end

bubble_sort([4,3,78,2,0,2,3,45,1,6,12,11])

def bubble_sort_by(array)
  swapped = true
  while swapped
    swapped = false
    for i in 1..array.length - 1
      if yield(array[i-1], array[i]) < 0
        array[i-1], array[i] = array[i], array[i-1]
        swapped = true
      end
    end
  end
  array
end

bubble_sort_by(["hi","hello","hey", "konnichiwa", "hola"]) do |left,right|
    right.length - left.length
    end
