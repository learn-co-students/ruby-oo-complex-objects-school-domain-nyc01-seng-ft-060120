# code here!

class School 
    def initialize(school)
        @roster = {}
    end
    attr_accessor :roster

    def add_student(name, grade)
        if @roster[grade] 
            @roster[grade] << name
        else 
            @roster[grade] = [name]
        end
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, student_name|
            sorted[grade] = student_name.sort
        end
        sorted
    end
end