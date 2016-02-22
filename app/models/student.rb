class Student < ActiveRecord::Base
	has_many :student_course
	has_secure_password
	
	validates_uniqueness_of :email
end
