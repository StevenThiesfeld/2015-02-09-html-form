require "sinatra"

get "/" do
  erb :welcome, :layout => :boilerplate
end

get "/library_form" do
  erb :library_form, :layout => :boilerplate 
end

get "/results" do
  @results = params
  erb :results, :layout => :boilerplate
end
