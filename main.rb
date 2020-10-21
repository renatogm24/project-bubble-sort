def bubble_sort(list)
  result = []
  count = 0
  list.length.times do
    list.each_with_index do |stock_1, idx|
      list.each_with_index do |stock_2, idy|      
        if stock_2 < stock_1  && idy-idx == 1
          list[idx] = stock_2
          list[idy] = stock_1
        end
      count += 1  
      end
    end
  end 
  p count
  return list
end

p bubble_sort([4,3,78,2,0,2])