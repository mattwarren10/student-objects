
require 'pry'
class Classroom
	attr_reader :students
	def initialize
		@students = []
	end

	def add_student(student)
		@students.push(student)
	end

	def search
		puts "Search a name: "
		search = gets.chomp
		@students.each_with_index do |s, index|
			if search == s.first_name
				puts index
				puts s.first_name
			else
				"Your search doesn't return anything."
			end
		end
	end
end

class Student
	attr_accessor :scores, :first_name
	def initialize(scores, first_name)
		@scores = scores
		@first_name = first_name
	end

	def get_average
		total = 0
		average = 0
		@scores.each do |s|
			total+= s
		end
		average = total/5
		letter_grade(average) && average
	end

	def letter_grade(average)
		case average
		when 0..59 then print 'F'
		when 60..69 then print 'D'
		when 7..79 then print 'C'
		when 80..89 then print 'B'
		when 90..100 then print 'A'
		end
		average
	end
end



alex = Student.new([100, 100, 100, 0, 100], "Alex")
brad = Student.new([84, 98, 32, 75, 83], "Brad")
celeste = Student.new([100, 58, 98, 83, 75], "Celeste")
david = Student.new([89, 98, 83, 94, 91], "David")
classroom = Classroom.new
classroom.add_student(alex)
classroom.add_student(brad)
classroom.add_student(celeste)
classroom.add_student(david)
classroom.search

# puts alex
# puts alex.scores
# puts alex.first_name
# alex.get_average


