class StudentCourse < ActiveRecord::Base
	has_many :courses
	has_many :videos

	validates :must_have_valid_trailer
	def must_have_valid_trailer
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must include an iframe tag")
		end
	end
end
