require('prime_sifting_case')
require('rspec')
require('pry')


describe('#create_input_array') do
  it('creates an array up to user value') do
    expect(create_input_array(10)).to(eq([2,3,4,5,6,7,8,9,10]))
  end

  it('creates an array up to user value') do
    expect(create_input_array(20)).to(eq([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]))
  end

end

describe('#pop_array') do
  it('gets rid of multiples of 2 in an array') do
    expect(pop_array([2,3,4,5,6,7,8,9,10],2)).to(eq([3,5,7,9]))
  end

  it('gets rid of multiples of 3 in an array') do
    expect(pop_array([3,5,7,9],3)).to(eq([5,7]))
  end

end

describe('#prime_sifting') do
  it('returns an array of primes based on user array(1..10)') do
    expect(prime_sifting([2,3,4,5,6,7,8,9,10])).to(eq([2,3,5,7]))
  end

  it('gets rid of multiples of 3 in an array') do
    expect(prime_sifting([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])).to(eq([2,3,5,7,11,13,17,19]))
  end

end
