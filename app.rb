require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @repeated_phrase = ""
    @number.times do
      @repeated_phrase = @repeated_phrase + " " + params[:phrase]
    end
    "#{@repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @answer = 0
    if params[:operation] == "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    else
      @answer = params[:number1].to_i / params[:number2].to_i
    end
    "#{@answer.to_s}"
  end
end