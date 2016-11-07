class CommentsController < ApplicationController

	def create
		@comments = Comment.new(comment_params)
		@comments.user_id = current_user.id
		@comments.save
		redirect_to root_path
	end

	private
	def comment_params
		params.require(:comment).permit(:text, :post_id)
	end
	
end
