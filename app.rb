require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @test_name = params[:name]
    binding.pry
  end

end