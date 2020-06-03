require 'pry'

class School

    attr_reader :roster, :school_name

    def initialize (school_name)
        @roster = {}
    end

    def add_student (name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
    @roster
    # binding.pry
    end

    def grade (grade)
        @roster[grade]
        
    end


    def sort
        sorted_hash = {}
        @roster.each do |grade, names|
          sorted_hash[grade] = names.sort
        end
        sorted_hash
      end
end

hill = School.new("Hill")
hill.add_student("Alex",10)
hill.add_student("Joe",10)
hill.add_student("Sam",9)
hill.add_student("Emily",9)
# binding.pry