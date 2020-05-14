require 'pry'
class School
  attr_accessor
  attr_reader :add_student, :school_name, :roster

  def initialize (school_name)
    @school_name = school_name
    @roster = {}
  end



  def add_student(student, grade_level)
    @student = student
    @grade_level = grade_level

      if @roster.include?(grade_level)
           @roster[grade_level] << student
      else @roster[grade_level] = []
           @roster[grade_level] << student
      end
   end

  def grade(grade)
     @roster[grade]
  end

  def sort
    sorted = {}
    @roster.collect do |grade, student|
       sorted[grade] = student.sort
    end
    sorted
end
  end
