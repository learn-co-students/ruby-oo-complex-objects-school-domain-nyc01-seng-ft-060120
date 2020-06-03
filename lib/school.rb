class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student (student, grade) 
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        roster_sort = {}
        roster.each do |grade, roster|
        roster_sort[grade] = roster.sort
    end
    roster_sort
  end

end