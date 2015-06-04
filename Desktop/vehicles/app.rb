require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/dealership')
require('./lib/vehicle')
require('pry')


get('/') do
  erb(:index)
end


get('/dealerships') do
  @dealerships = Dealership.all
  erb(:dealerships)
end

post('/dealerships') do
  name = params.fetch('name')
  dealership = Dealership.new(name)
  dealership.save
  @dealerships = Dealership.all
  erb(:dealerships)
end


get('/dealerships/new') do
  erb(:dealerships_form)
end

get('/dealerships/:id') do
  @dealership_id = params.fetch('id')
  @dealership = Dealership.find(params.fetch('id').to_i)
  @vehicles = @dealership.cars
  erb(:vehicles)
end

get('/vehicles_form/:id') do
  @dealership_id = params.fetch('id').to_i
  @dealership = Dealership.find(@dealership_id)
  erb(:dealership_vehicles_form)
end

get('/vehicles') do
  @vehicles = Vehicle.all
  erb(:vehicle)
end

post('/vehicles') do
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  @vehicle = Vehicle.new(make, model, year)
  @vehicle.save
  @dealership = Dealership.find(params.fetch('dealership_id').to_i)
  @vehicles = Vehicle.all
  erb(:vehicles)
end

get('/vehicles/:id') do
  @vehicle = Vehicle.find(params.fetch('id').to_i)
  erb(:vehicle)
end







# get('/vehicles/:id') do
#   @vehicle = Vehicle.find(params.fetch('id'))
#   erb(:vehicle)
# end


#add new car to specific dealership


#
# post('/vehicles') do
#   make = params.fetch('make')
#   model = params.fetch('model')
#   year = params.fetch('year')
#   @vehicle = Vehicle.new(make, model, year)
#   @vehicle.save
#   @dealership = Dealership.find(params.fetch('dealership_id').to_i)
#   @dealership.add_vehicle(@vehicle)
#   erb(:dealership)
# end
