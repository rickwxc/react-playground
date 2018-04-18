
class HomeController < ApplicationController
	def index
		render :plain => 'ok' 
	end

	def show
		render :plain => 'show' 
	end

end
