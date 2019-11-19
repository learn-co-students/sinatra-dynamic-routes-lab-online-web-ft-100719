require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name=params[:name].reverse
    @name
  end


  get '/square/:number' do
    @num=params[:number].to_i
    square=@num*@num
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number=params[:number].to_i
    @phrase=params[:phrase]
    result=" "
    @number.times do
      result<<"#{@phrase} "
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1=params[:word1]
    @word2=params[:word2]
    @word3=params[:word3]
    @word4=params[:word4]
    @word5=params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op=params[:operation]
    @n1=params[:number1].to_i
    @n2=params[:number2].to_i

    if @op=='add'
      @result=@n1+@n2
    elsif @op=='subtract'
      @result=@n1-@n2
    elsif @op=='multiply'
      @result=@n1*@n2
    elsif @op=='divide'
      @result=@n1/@n2
    end
    "#{@result.to_s}"
  end

end
