class Post < ApplicationRecord
	validates :user_id, :text, presence: true
	def all_posts 
		Post.all
	end

	def user
		User.find(self.user_id)
	end
end
