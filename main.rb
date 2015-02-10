require "sinatra"
# require_relative"dinner_club"

before do
  @test = "This is a test of before filters."
end

helpers do
  def foosplosion
    @foo = "FOOBAR"*60
  end
end

get "/" do
  @user_name = "Steven"
  foosplosion
  erb :welcome, :layout => :boilerplate
end

get "/greet/:name:age" do
  
  
  "Hello, #{params[:name]}"
  "You're #{params[:age]} years old"
end

get "/show_foo" do
  "FOO\n"*1000
end
  
  
  
  
  
# class User
#   def initialize(options)
#     @user_name = options[:name]
#   end
#
# end#classend
#
# user = User.new({name: "Steven"})