require 'pry'

class School
    attr_accessor :roster
    attr_reader :name
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        output = @roster.map do |grade, s_array|
            [grade, s_array.sort]
        end
        output.to_h
    end
end