class HomeController < ApplicationController
	def index
		@post = Post.new
		@comment = Comment.new
		@all_posts = Post.all
		@error = flash[:error]
	end
end
