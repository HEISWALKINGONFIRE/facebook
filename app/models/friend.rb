class Friend < ApplicationRecord
	validates :user_id, :text, presence: true
end
