module ApplicationHelper
	def current_user
		if session[:user_id] #!= nil
			User.find(session[:user_id])
		end
	end
end
