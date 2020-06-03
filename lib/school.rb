class School 
    attr_accessor :name, :roster

    def initialize (name) 
        @name = name 
        @roster = {}
    end 

    def add_student (name, grade)
        if !roster.has_key? (grade) 
            roster[grade] = []
            roster[grade] << name
        else 
            roster[grade] << name
        end
    end 

    def grade (grade)
        roster[grade]
    end

    #def sort 
      # roster.sort
   # end
#end 

def sort 
    new_hash = {}
    roster.each do |x, y|
        new_hash[x] = y.sort 
    end 
    new_hash 
end 
end 