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
 

def bubble_sort(unsorted)
  sort = false
  tot = 0
  change = false
  while !change
    for i in 0..(unsorted.length - 2 - tot)
      if unsorted[i] > unsorted[i+1]
	store = unsorted[i+1]
	unsorted[i+1] = unsorted[i]
	unsorted[i] = store
	sort = true 
      end
    end
    tot += 1
    if !sort || tot == (unsorted.length - 1)
      change = true
    else 
      iter = 0
    end
  end
  return unsorted
end


values = Array.new(0)
puts "Hello! Please enter the space delimited numbers you would like us to
sort"
int_inps = gets.chomp
str_ver = int_inps.split(" ")
unsorted_arr = str_to_int_arr(str_ver)
if unsorted_arr != nil
   p bubble_sort(unsorted_arr)
end
