#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>!!!"			
end

# обработчик запроса get
get "/about" do
	erb :about
end

get "/visit" do
	erb :visit
end

post "/visit" do
	@login = params[:login]
	@pass = params[:pass]
	@phone = params[:phone]
	@datetime = params[:datetime]
end

get "/contacts" do
	erb :contacts
end


