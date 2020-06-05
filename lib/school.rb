#>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

require 'pry'


#------------------------------------------------------------------------


class School
    attr_accessor :name
    attr_accessor :roster


    def initialize(name)
        @name  = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
     

        roster[grade] << student
       
        # binding.pry
    end 

    def grade(grade)
        roster[grade]
        # binding.pry
    end

    def sort
       sorted = {}
       roster.each do |grade, each_student_arr|
           sorted[grade] = each_student_arr.sort
       end
       sorted
    end


    # binding.pry
end


school = School.new("Bayside High School")

school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Blake Johnson", 10)
school.add_student("Screech", 11)
school.roster
school.grade(10)
school.sort
# binding.pry