def bubble_sort(list)
  result = []
  count = 0
  ordered_items = 0
  change = false
  list.length.times do
    list.each_with_index do |stock_1, idx|
      list.each_with_index do |stock_2, idy|      
        if stock_2 < stock_1  && idy-idx == 1
          change = true
          list[idx] = stock_2
          list[idy] = stock_1
          next
        elsif idy-idx == 1
          next
        end
      count += 1  
      end
    end
    change = false
    result.push(list.last)
    list.pop    
  end 
  p count
  return result.reverse!
end

p bubble_sort([4,3,78,2,0,2])