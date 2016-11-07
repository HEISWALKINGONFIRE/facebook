class UsersController < ApplicationController
	def new
		@user = User.new
		@flash = flash[:errors]
	end
	def create
		@user = User.create(valid_user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path
		else
			flash[:errors] = @user.errors.messages #"Unable to create new user"
			redirect_to :action => "new"
		end
	end

	private
	def valid_user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
