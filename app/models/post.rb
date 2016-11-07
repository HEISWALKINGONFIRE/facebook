class Post < ApplicationRecord
	validates :user_id, :text, presence: true
	belongs_to :user
	has_many :comments

	def all_posts 
		Post.all
	end

	def user
		User.find(self.user_id)
	end
end
