require 'sinatra'
require 'barometer'





get '/:city'  do

	barometer = Barometer.new(params[:city])
	weather = barometer.measure

	@weather = weather
	@city = params[:city]	

	erb :cidade

end