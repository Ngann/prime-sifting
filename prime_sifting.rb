class Coin_Combo
  attr_accessor(:user_input, :quarters, :dimes, :nickels, :pennies)

  def initialize(user_input, quarters, dimes, nickels, pennies)
    @user_input = user_input
    @quarters = quarters
    @dimes = dimes
    @nickels = nickels
    @pennies = pennies
  end


  def calc_quarters()
    self.quarters = self.user_input / 25
  end

  def calc_coins()
    index = 0
    coin_types_array = [25,10,5,1]
    output_array = []
    remainder = self.user_input
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
end
