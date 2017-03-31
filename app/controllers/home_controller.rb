class HomeController < ApplicationController	
	def index
		  @driver = Driver.new
	end
	def crear
		@driver = Driver.create({
		:name => params[:name], 
		:description => params[:description], 
		:estado => params[:estado],
		:plataforma => params[:plataforma], 
		:photo => params[:photo],
		:user_id => params[:user_id]
			})
		redirect_to "/"
	end
end
