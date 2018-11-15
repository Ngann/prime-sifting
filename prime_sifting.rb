def create_input_array(user_input)
  input_array = []
  number = 1
  (user_input-1).times() do
    number = number + 1
  input_array.push(number)
  end
  return input_array
end

def pop_array(input_array,test_mod_number)
  # x = [2,3,4,5,6,7,8,9,10]
  output_array = []
  index = 0
  while (index < input_array.length())
    if (input_array[index] % test_mod_number) != 0
      output_array.push(input_array[index])
    end
    index = index + 1
    # if index > 1000 #infinite loop checker
    #   break
    # end
  end
  return output_array
end

def prime_sifting(input_array)
  output_array = []
  index = 0
  while output_array[-1] != input_array[0]
    if input_array[0] == nil
      break
    end
    #puts "index is: #{index}"
    output_array.push(input_array[0])
    #puts "output array is: #{output_array}"
    input_array = pop_array(input_array,input_array[0])
    #puts "input_array is: #{input_array}"
    index = index + 1
  end
  return output_array
end
