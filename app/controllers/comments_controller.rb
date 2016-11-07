class CommentsController < ApplicationController
	# def index
	# 	@comments = Comment.all#.order("created at DESC")
	# end

	# def new
	# 	@comments = Comment.new
	# end

	# def create
	# 	@comments = Comment.new(status_params)
	# 	@comments.save
	# 	#render :"index"
	# 	redirect_to comments_path
	# end
	# def show
		
	# end
	# def edit
	# end
	# def update
	# end
	# def destroy
	# end

	# private
	# def status_params
	# 	params.require(:comment).permit(:text, :user_id, :post_id)
	
	def index
		@comments = Comment.all
	end

	def new
		@comments = Comment.new
	end

	def create
		@comments = Comment.new(status_params)
		@comments.save
		redirect_to comments_path
	end

	private
	def status_params
		params.require(:comment).permit(:text)
	end
	
end
