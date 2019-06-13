require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @test_name = params[:name]
    "#{@test_name.reverse!}"
  end

end
