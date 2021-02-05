require 'pry'

# def oxford_comma(array)
#   if array.length == 2
#     "#{array[0]} and #{array[1]}"
#   elsif array.length > 2
#     final_word = array.pop
#     array.join(", ") << ", and #{final_word}"
#   else 
#     array[0]
#   end
# end

# def oxford_comma(array)
#   if array.length == 2
#     return "#{array[0]} and #{array[1]}"
#   elsif 2 < array.length
#     array[-1].insert(0, "and ")
#   end
#   array.join(", ")    
# end

def oxford_comma(array)
  if array.size == 1 
    array[0]
  elsif array.size == 2 
    array.join(" and ")
  else
    final_element = array.last
    array.pop
    initial_string = array.join(", ")
    initial_string + ", and " + final_element
  end 
end