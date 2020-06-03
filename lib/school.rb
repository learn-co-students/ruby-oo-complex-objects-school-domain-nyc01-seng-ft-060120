require 'pry'
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_students = {}
        @roster.sort.each do |grade, name_array|
            sorted_students[grade] = name_array.sort
        end
        sorted_students
    end


end