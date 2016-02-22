class Course < ActiveRecord::Base
	has_many :videos, dependent: :destroy

	validates :name, uniqueness: true
end
