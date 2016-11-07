class Comment < ApplicationRecord
	validates :user_id, :text, presence: true
	belongs_to :user
	belongs_to :post
	def user
		User.find(self.user_id)
	end
end
