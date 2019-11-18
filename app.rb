require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string << "#{@phrase} "
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = ""
    params.each do |key,value|
      @string << " #{value}"
    end
    "#{@string}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = 0
    case @operation
    when "add"
      @result = @number1 + @number2
    when "subtract"
      @result = @number1 - @number2
    when "multiply"
      @result = @number1 * @number2
    when "divide"
      @result = @number1 / @number2
    end
    "#{@result}"
  end

end