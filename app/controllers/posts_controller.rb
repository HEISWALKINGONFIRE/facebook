class PostsController < ApplicationController
	def create
		post = Post.create(text: params[:post][:text], user_id: current_user.id)
		if !post.save
			flash[:error] = "Invalid Post"
		end
		redirect_to root_path
	end
end
