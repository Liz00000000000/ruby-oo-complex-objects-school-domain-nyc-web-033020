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
    @roster[grade] ||= [ ]
        @roster[grade] << name
  end

  def grade(grade)
     @roster[grade]
      #  binding.pry
  end

  def sort
    sort_students = { }
    roster.each do |grade, students|
         #binding.pry
   sort_students[grade] = students.sort
      end
     sort_students.sort
  end

end
