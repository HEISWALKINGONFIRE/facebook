class HomeController < ApplicationController
	def index
		if !current_user #!= nil
			redirect_to new_session_path
		end
		@post = Post.new
		@all_posts = Post.all
		@error = flash[:error]
	end
end
