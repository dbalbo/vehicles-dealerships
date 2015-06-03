require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
