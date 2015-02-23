require 'sinatra'
require 'csv'
require 'date'

get '/' do

	@postrequest = false

  erb :index

end

post '/' do
	@day = params[:day].to_i
	@week = params[:week].to_i
	@term = params[:term]
	@year = params[:year]
	@postrequest = true

	if @year == '2015'
		if @term == 'hilary'
			d = Date.new(2015, 1, 11)
		else 
			if @term == 'trinity'
				d = Date.new(2015, 4, 19)
			else 
				d = Date.new(2015, 10, 4)
			end
		end


	@rd = d + (7 * @week) + @day
	erb :index
	else
		if @year == '2016'
			if @term == 'hilary'
			d = Date.new(2016, 1, 10)
		else 
			if @term == 'trinity'
				d = Date.new(2016, 4, 17)
			else 
				d = Date.new(2016, 10, 2)
			end
		end
	
	@rd = d + (7 * @week) + @day
	erb :index
	end

end
end