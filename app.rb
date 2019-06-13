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
    "#{(@test_phr + ' ')*@test_num.to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    
  end

end
