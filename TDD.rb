
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
      
    else
      print array
      break
    end
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
checksorted([1,2,3])
