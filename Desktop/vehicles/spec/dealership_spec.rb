require('rspec')
require('dealership')


describe('#name') do
  it('returns the name of the dealership') do
    test_dealership = Dealership.new('Tesla Super Cars')
    expect(test_dealership.name).to(eq('Tesla Super Cars'))
  end
end
