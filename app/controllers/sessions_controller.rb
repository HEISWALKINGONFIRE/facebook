class SessionsController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.find_by(email:params[:user][:email])
		if @user #!= nil
			if @user.password == params[:user][:password]
				session[:user_id] = @user.id
			end
		end
		redirect_to root_path
	end
	def log_out
		session[:user_id] = nil
		redirect_to root_path
	end
end
