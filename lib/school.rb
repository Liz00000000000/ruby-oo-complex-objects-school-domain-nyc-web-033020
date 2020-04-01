#binding.pry
# code here!
class School
  def initialize(name)
    @name = name
    @roster = roster
  end
#  def name=(name)
#    @name = name
#  end
    def roster
    @roster = { }
     end

  def add_student(name, grade)
    if @roster[grade] != nil
        @roster[grade] << name
    else
    @roster[grade] = [name]
    end
  end

  def grade(grade)
    puts @roster[grade]
  end

  def sort
    roster.each do |grade, student|
      student.map do |name|
        name
      end
    end.sort
  end

end
