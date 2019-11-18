require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # This is a sample static route.
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  # This is a sample dynamic route.
  get "/square/:number" do
    @num = params[:number].to_i
    @sqr = @num ** 2
    "Square of #{@num} is #{@sqr}"
  end

  # Code your final two routes here:

  get "/say/:number/:phrase" do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    return_str = ""
    @num.times { return_str << "#{@phrase} "}
    return_str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @oper
    when "add"
      @ans = @num1 + @num2
      "Sum of #{@num1} and #{@num2} is #{@ans}"
    when "subtract"
      @ans = @num1 - @num2
      "Difference of #{@num1} and #{@num2} is #{@ans}"
    when "multiply"
      @ans = @num1 * @num2
      "Product of #{@num1} and #{@num2} is #{@ans}"
    when "divide"
      @ans = @num1 / @num2
      "Quotient of #{@num1} and #{@num2} is #{@ans}"
    else
      "I don't know how to do that"
      end #case
  end 

end