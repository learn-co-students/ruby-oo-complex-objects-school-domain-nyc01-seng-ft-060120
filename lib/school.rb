require 'pry'
class School
	attr_accessor :name, :roster
	
	def initialize(name, roster = {})
		@name = name 
		@roster = roster
	end

	def add_student(student_name, grade)

			if @roster[grade] = @roster[grade]
				@roster[grade] << student_name
			else
				@roster[grade] = []
				@roster[grade] << student_name
			end
	end

	# binding.pry

	def grade(grade)
		@roster[grade]
	end


	def sort
		roster_sort = {}
		@roster.each do |grade, roster|
			roster_sort[grade] = roster.sort
		end
		roster_sort
	end
end

