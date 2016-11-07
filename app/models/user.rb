class User < ApplicationRecord
	validates :name, :email, :password, :password_confirmation, presence: true
	validates_confirmation_of :password
	validates :email, uniqueness: { case_sensitive: false }

	has_many :posts
	has_many :comments, through: :posts
end
