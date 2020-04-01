require 'pry'
# code here!
class School
  def initialize(name)
    @name = name
    @roster = Hash.new
  end
#  def name=(name)
#    @name = name
#  end
    def roster
    @roster
     end

  def add_student(name, grade)
    if @roster[grade]
        @roster[grade] << name
       else
        @roster[grade] = Array.new
    @roster[grade] << name
    end
  end

  def grade(grade)
     @roster[grade]
      #  binding.pry
  end

  def sort
    sort_students = { }
    roster.each do |grade, students|
         #binding.pry
    grade = students.sort
      end
     roster.sort
  end

end
