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

  get "/say/:number/:phrase" do
    @test_num = params[:number]
    @test_phr = params[:phrase]
    #{}"#{(@test_phr + ' ')*@test_num.to_i}"
    @test_num.to_i.times{puts "#{@test_phr}"}
    #binding.pry
  end

end
