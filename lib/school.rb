# code here!

class School
    
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

   def add_student(name_student, grade)
    roster[grade] ||=[]
    roster[grade] << name_student

   end

   def grade(grade)
        roster[grade]
   end

   def sort
    sort_roster = {}
    roster.each do |grade, roster|
    sort_roster[grade] = roster.sort
   end
  sort_roster 
end


end




#   #sort
#     is able to sort the students (FAILED - 6)

# Failures:


#   6) School #sort is able to sort the students
#      Failure/Error: @school = School.new("Test School")
     
#      NameError:
#        uninitialized constant School
#      # ./spec/student_spec.rb:5:in `block (2 levels) in <top (required)>'

# Finished in 0.00263 seconds (files took 0.13645 seconds to load)
# 6 examples, 6 failures

# rspec ./spec/student_spec.rb:49 # School #sort is able to sort the students
