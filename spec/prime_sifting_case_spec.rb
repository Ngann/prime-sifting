require('coin_combo_case')
require('rspec')
require('pry')




describe('#calc_coins') do
  it('shows an array of [quarters,dimes,nickles,pennies]') do
    expect(calc_coins(37)).to(eq([1,1,0,2]))
  end

end


describe('#calc_coins') do
  it('shows an array of [quarters,dimes,nickles,pennies]') do
    expect(calc_coins(75)).to(eq([3,0,0,0]))
  end

end
