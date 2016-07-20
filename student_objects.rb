require 'pry'
class Classroom
	attr_reader :students
	def initialize
		@students = []
	end

	def add_student(student)
		@students.push(student)
	end
end

class Student
	attr_accessor :scores, :first_name
	def initialize(scores, first_name)
		@scores = scores
		@first_name = first_name
	end

end

alex = Student.new([100, 100, 100, 0, 100], "Alex")
classroom = Classroom.new
classroom.add_student(alex)
binding.pry