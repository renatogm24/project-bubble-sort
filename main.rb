def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1
  #count = 0
  loop do
    # we need to create a variable that will be checked so that we don't run into an infinite loop scenario.
    swapped = false

    # subtract one because Ruby arrays are zero-index based
    (array_length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
      #puts "iteration: #{i}"
      #count += 1
    end

    break if not swapped
  end
  #p count
  array
end

p bubble_sort([4,3,78,2,0,2])