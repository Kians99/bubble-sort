def int_check(s_input) 
  return (s_input == "0") || (s_input.to_i != 0)
end

def str_to_int_arr(array)
  array.map do |str|
    if int_check(str) 
      str.to_i
    else
      puts "The array contains values that are not integers!"
      return
    end
  end
end
 






values = Array.new(0)
puts "Hello! Please enter the space delimited numbers you would like us to
sort"
int_inps = gets.chomp
str_ver = int_inps.split(" ")
values_in_arr = str_to_int_arr(str_ver)
if values_in_arr != nil
#bubble_sort()
end
