module ApplicationHelper
	# Returns the current user logged in based on sessions, user object
	def current_user
		if session[:user_id] #!= nil
			current_user ||= User.find(session[:user_id])
		end
	end
end
