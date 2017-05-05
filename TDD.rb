
def sort(array)
  if array == [] || array == [1]
    print array
    return array
  end
  puts array
end

# def checksorted(array)
#   array.each_with_index do |v, i|
#     if array[i] <= array[i+1]-1
#       print "it works"
#       return array

#     else
#       #sort correct order
#     end
#   end
# end

def checksorted(array)
  i = 0
  until i > array.length-2 do
      # print array[i]
      if array[i] > array[i+1] then
        array[i], array[i+1] = array[i+1], array[i]
        print array
        next
      end
      print array
      i +=1
    end

  end

  # def sortmore(array)
  #   i = 0
  #   until i > array.length-2 do
  # if array[i] > array[i+1] then
  # array[i], array[i+1] = array[i+1], array[i]
  # end
  #   end

  # print array
  # return array
  # end
  def sortmore(array)
    (array.length-1).times do |a|
      i = 0
      n = array.length-2

      begin
        if array == [] || array == [1]
          break
        elsif array[i] > array[i+1] then

          array[i], array[i+1] = array[i+1], array[i]

          next

        end

        i+= 1
      end until i > n
    end
    print array
    return array
  end


  #doesn't work with [2,3,1][3,2,1]
  sortmore([1,2,3])
  sortmore([1,3,2])
  sortmore([2,1,3])
  sortmore([2,3,1])
  sortmore([3,2,1])
  sortmore([3,1,2])
  sortmore([1,2])
  sortmore([2,1])
  sortmore([1,2,3,4])
  sortmore([1,3,2,4])
  sortmore([4,2,1,3])
  sortmore([4,3,2,1])
  sortmore([4,3,2,1,5])
  sortmore([5,4,3,2,1])
  
  # checksorted([2, 3, 1, 4])
  # def sort2(array)
  #   i = 0
  #     n = array.length-2
  #   if array[i] > array[i+1] then
  #   (array.length-1).times do |i|
  #     array[i], array[i+1] = array[i+1], array[i]
  #   next
  #   end
  #   i+= 1
  # end until i > n
  #   print array

  #   (array.length-1).times do |i|
  #     array[i], array[i+1] = array[i+1], array[i]
  # end
  # print array
  # end
  # sort2([2,3,1])
