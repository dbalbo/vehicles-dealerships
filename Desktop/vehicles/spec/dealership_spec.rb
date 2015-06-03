require('rspec')
require('dealership')


describe('#name') do
  it('returns the name of the dealership') do
    test_dealership = Dealership.new('Tesla Super Cars')
    expect(test_dealership.name).to(eq('Tesla Super Cars'))
  end
end

describe('#id') do
  it('returns the id of a dealership') do
    test_dealership = Dealership.new("Tesla Super Cars")
    expect(test_dealership.id).to(eq(1))
  end
end
describe('#cars') do
  it('returns an empty array of cars for the dealership') do
    test_dealership = Dealership.new("Tesla Super Cars")
    expect(test_dealership.cars).to(eq([]))
  end
end
 describe('.all') do
   it('is empty at first') do
     expect(Dealership.all).to(eq([]))
   end
 end
