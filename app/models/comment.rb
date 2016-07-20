class Comment < ActiveRecord::Base
	belongs_to :review
	belongs_to :user
	has_many :commentvotes, dependent: :destroy

end
