class HomeController < ApplicationController
	include HomeHelper
	def index
		if !current_user #!= nil
			redirect_to new_user_path
		end
	end
end
