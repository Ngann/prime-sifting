def calc_coins(user_input)
  index = 0
  coin_types_array = [25,10,5,1]
  output_array = []
  remainder = user_input
  while (index < coin_types_array.length)
    #puts "INDEX : #{index}"
    #puts "NEW LOOP REMAINDER: #{remainder}"
    output_array.push(remainder / coin_types_array[index])
    #puts "OUTPUT ARRAY: #{output_array}"
    remainder = remainder % coin_types_array[index]
    #puts "NEW REMAINDER: #{remainder}"
    index = index + 1

    if index > 10
      break
    end
  end
  return output_array
end
