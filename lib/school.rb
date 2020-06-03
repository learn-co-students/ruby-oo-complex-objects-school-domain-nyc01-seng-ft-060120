class School
    attr_accessor :name, :roster

    def initialize(name, roster ={})
        @name = name
        @roster = roster
    end

    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << "#{name}"
    end

    def grade(num)
        roster[num]
    end

    def sort
        sorts = {}
        roster.each do |grade, names|
            sorts[grade] = names.sort
    end
    sorts
end

end

# code here!