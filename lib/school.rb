require "pry"

class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(student, age)
    @roster[age] = [] unless @roster[age]
    @roster[age] << student
  end

  def grade(age)
    @roster[age]
  end
  def sort
    sorted_students = {}
    @roster.each {|k, v_array| sorted_students[k] = v_array.sort}
    Hash[sorted_students.sort]
  end
end