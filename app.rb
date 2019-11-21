require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @ans = ''
    @num.times do
      @ans += "#{@phrase} "
    end
    @ans
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words_array = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]]
    "#{words_array.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "multiply"
      @ans = @num1 * @num2
    when "divide"
      @ans = @num1 / @num2
    when "add"
      @ans = @num1 + @num2
    when "subtract"
      @ans = @num1 - @num2
    end
    "#{@ans}"
  end
end