require 'sinatra'

get '/hello/:name'  do
	@name = params[:name]
	erb :hello
end