# code here!
class School
    def initialize(school)
        @school = school
        @roster = {}
    end

    attr_reader :school
    attr_accessor :roster, :add_student, :grade

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end