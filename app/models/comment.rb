class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	def user
		User.find(self.user_id)
	end
end
