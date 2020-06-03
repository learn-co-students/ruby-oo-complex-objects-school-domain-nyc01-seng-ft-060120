class School
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end
    attr_reader :name
    attr_accessor :roster

    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade].to_a
    end

    def sort
        @new_roster = {}
        @roster.each do |key, value|
            @new_roster[key] = @roster[key].sort
        end
        @new_roster
    end



end