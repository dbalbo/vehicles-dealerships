require('rspec')
require('dealership')

    describe(Dealership) do
      before do
        Dealership.clear
      end


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
     describe('#save') do
       it('adds a dealership to an array of saves dealerships') do
         test_dealership = Dealership.new("Tesla Super Cars")
         test_dealership.save
         expect(Dealership.all).to(eq([test_dealership]))
       end
     end
    describe('.clear') do
      it('empties out all of the saved dealerships') do
        Dealership.new('Tesla Super Cars').save
        Dealership.clear
        expect(Dealership.all).to(eq([]))
      end
    end
  end
