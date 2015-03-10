require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

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
