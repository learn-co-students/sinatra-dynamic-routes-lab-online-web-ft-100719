require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = @params[:name].reverse
    "#{@name}" 
  end
  
  get '/square/:number' do
    @num = @params[:number].to_i ** 2
    "#{@num}"
  end
  
  get '/say/:number/:phrase' do
    @phrase = @params[:phrase]
    @num = @params[:number].to_i 
    @temp_string = ""
    @num.times do 
      @temp_string += @phrase
    end
    "#{@temp_string}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @concat_word = @params[:word1] + " " + @params[:word2] + " " + @params[:word3] + " " + @params[:word4] + " " + @params[:word5] + "."
    
    "#{@concat_word}"
  end
  
  get '/:operation/:number1/:number2' do
    @solution = 0
    if @params[:operation] == "add"
      @solution = @params[:number1].to_i + @params[:number2].to_i
    elsif @params[:operation] == "subtract"
      @solution = @params[:number1].to_i - @params[:number2].to_i
    elsif @params[:operation] == "divide"
      @solution = @params[:number1].to_i / @params[:number2].to_i
    elsif @params[:operation] == "multiply"
      @solution = @params[:number1].to_i * @params[:number2].to_i
    end
    @solution_string = @solution.to_s
    "#{@solution_string}"
  end

end