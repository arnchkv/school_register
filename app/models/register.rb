class Register < ApplicationRecord
	validates_uniqueness_of :roll
	belongs_to :user
end
