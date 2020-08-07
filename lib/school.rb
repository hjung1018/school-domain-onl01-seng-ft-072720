class School
  
  attr_accessor :student, :roster
  
  def initialize(roster)
    @roster = {}
  
  end
  
  attr_writer :add_student
    
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, name|
      grade.sort
  end
  @roster
end

#       @school.add_student("Jack Bauer", 7)

#       # key order does not matter; this is testing that the students in each respective value are in alphabetical order
#       expect(@school.sort).to eq({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
#     end
#   end
# end
