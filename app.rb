require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values.join(" ")
    "#{@words}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum.to_s}"
    elsif params[:operation] == "subtract"
      @total = params[:number2].to_i - params[:number1].to_i
      "#{@total.to_s}"
    elsif params[:operation] == "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product.to_s}"
    else params[:operation] == "divide"
      @quotient = params[:number1].to_i / params[:number2].to_i
      "#{@quotient.to_s}"
    end
  end

end
