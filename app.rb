require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @test_name = params[:name]
    "#{@test_name.reverse!}"
  end

  get "/square/:number" do
    @test_number = params[:number]
    "#{@test_number.to_i**2}"
  end

end
